// 74HC165_74HC595_Telnet_2.ino

#include <WiFi.h>
#define LED_BUILTIN 2

#define NB_INP_SR 2  // Number of shift registers to be read
#define NB_OUT_SR 1  // Number of shift registers to be writen

/* Wifi access point settings */
const char* ssid     = "<SSID>";
const char* password = "<PASSWORD>";

/* Flightgear telnet server settings */
//IPAddress server(192, 168, 0, 101); // Factory
IPAddress server(192, 168, 1, 11); // Home
const int port = 5050;

WiFiClient telnet;

/* ESP8266 pin allocation */
const int LATCHIN = 21; /*shift registers in and out CANNOT share same LATCH*/
const int CLK = 3;
const int DATA = 1;
const int CLK_INH = 22;
const int LATCHOUT = 23;

/* Timing constants */
const int _pause = 4;
const int period = 10; // ms

/* variables */
byte prevStatus[NB_INP_SR];
char cmd[100];
char feedback[100];
bool firstRead;
byte diffMask, data;
char c;
int i;

/* telnet buffers */
char buff0[50];
char buff1[50];
char buff2[50];

/* Flightgear parameters */
char* inParams[] = { "controls/lighting/emer-light",
                     "controls/lighting/day-night",
                     "controls/fuel/gravity-xflow",
                     "controls/fuel/xfer-L",
                     "controls/fuel/xfer-R",
                     "controls/electric/battery-switch",
                     "controls/electric/engine/generator",
                     "controls/electric/engine[1]/generator",
                     "controls/electric/battery-switch[1]",
                     "controls/electric/external-power",
                     "controls/electric/avionics-switch",
                     "controls/engines/engine/starter",
                     "controls/engines/disengage",
                     "controls/engines/engine [1]/starter",
                     "controls/engines/engine/ignit",
                     "controls/engines/engine [1]/ignit",
                     "controls/fuel/tank/boost_pump",
                     "controls/fuel/tank[1]/boost_pump",
                     "controls/engines/engine/fadec",
                     "controls/engines/engine[1]/fadec",
                     "controls/electric/std-by-pwr"};
bool paramUpdated[20]; /* tels if a parameter has already be updated by 
                        * another bit (3 state switches) */
int nbInParams = sizeof(inParams)/sizeof(inParams[0]);


/* inParamsIdx is a llok-up table that tels for each bit, what is the
 * associated parameter, which function should be use to calculate the
 * new value and which bits should be used in this function.
 * inParamsIdx has 3 dimensions
 *  - first dimension is the number of shift registers
 *  - second dimension os the bit number
 *  - third dimention is the index of the information
 *      - [0] is the index of the parameter in inParams
 *      - [1] is the function to be used to generate the value to be passed
 *      - [2] is the bit index to be used as first variable in the equation for calculation the value
 *      - [3] is the bit index to be used as second variable in the equation for calculation the value
 */
int inParamsIdx[2][8][4] =  { {
                              {0,1,0,1},
                              {0,1,0,1},
                              {1,0,2,0},
                              {2,0,3,0},
                              {3,1,4,5},
                              {3,1,4,5},
                              {4,1,6,7},
                              {4,1,6,7}
                            },

                            {
                              {5,0,0,0},
                              {6,0,1,0},
                              {7,0,2,0},
                              {8,0,3,0},
                              {9,0,4,0},
                              {10,1,5,6},
                              {10,1,5,6},
                              {11,0,7,0}
                            }
                          };


char* outParams[] = { "/services/ext-pwr/enable",
                      "/instrumentation/annunciators/caution",
                      "/instrumentation/annunciators/warning"};
int nbOutParams = sizeof(outParams)/sizeof(outParams[0]);
byte outBytes[1] = { 0 };

/*
 * {function, shift register #, bit#)
 */
int outParamsIdx[3][3] = { {0,0,5}, /* true/false */
                           {1,0,3}, /* 0/1 double */
                           {1,0,1}  /* 0/1 double */
                         };


void setup()
{
  pinMode(LED_BUILTIN, OUTPUT); // Initialize the LED_BUILTIN pin as an output
  pinMode(LATCHIN, OUTPUT); // Pin asking the register to read the pin states
  pinMode(LATCHOUT, OUTPUT); // Pin asking the register to read the pin states
  pinMode(CLK, OUTPUT);         // Clock pin
  pinMode(CLK_INH, OUTPUT);     // Pin the inhibits the clock signal
  digitalWrite(CLK_INH, HIGH);  // Starting with an inhibited clock
  Serial.begin(19200);          // Speed for the serial port (debuging only)
  WifiConnect();                // Connected to the Wifi AP
  TelnetConnect();
  firstRead = true;             // All the paramters will be updated the first loop turn
  for (int i=0; i<7; i++)       // Initialisation of the paramUpdated vector
    paramUpdated[i] = false;
  subscribe();
}

void WifiConnect()
{
  /* Connects both to the Wifi AP and to flightgear telnet terminal */

  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void TelnetConnect()
{
  if (telnet.connect(server, port))
  {
    // if connection, report back via serial
    Serial.println("Telnet connected");
    digitalWrite(LED_BUILTIN, HIGH);
  }
  else
  {
    Serial.println("connection to server failed");
    digitalWrite(LED_BUILTIN, LOW);
    Serial.print("Waiting for connection");
    while(!telnet.connect(server, port))
    {
      Serial.print(".");
      delay(500);
    }
    Serial.println("OK");
  }
  
  delay(50);
  telnet.print("data\r\n");     // raw data mode (no /> prompt)
  delay(_pause);
}

void loop()
{
  pinMode(DATA, INPUT);

  if(firstRead) Serial.println("First readout");

  latch(); // Ask the registers to read their inputs

  /* It is onportant *not* to CLK_INH high between the two registers,
   * otherwise it shifts the second register*/
  digitalWrite(CLK_INH, LOW);

  for(int sr=0; sr<NB_INP_SR; sr++) // For each shift register
  {
    data = readShiftRegister();

    /* The bits which state has changed are identified by
     * XOR operation which gives 1 where bits are different*/
    diffMask = data ^ prevStatus[sr];

    for(int b=0; b<8; b++) // For each bit
    {
      if((bitRead(diffMask, b) & !paramUpdated[inParamsIdx[sr][b][0]]) | firstRead)
      /* IF
       * - the bit has changed AND the parameter has not been updated yet
       *  OR
       * - it is the first time the input are read
       * THEN
       * - we generate the command
       * - tell that the corresponding parameter has been updated so it
       *   is not updated twice
       */
      {
        generateSetCommand(inParamsIdx[sr][b], data);
        paramUpdated[inParamsIdx[sr][b][0]] = true;
      }
    }

    prevStatus[sr] = data;
    for (int i=0; i<20; i++) paramUpdated[i] = false;
  }

  if(firstRead)
  {
    Serial.println("End of first readout");
    firstRead = false;
  }
  
  digitalWrite(CLK_INH, HIGH);
  
  /***************/

  //while (telnet.available()) // consume the buffer
  //{
    if(readLineTelnet(cmd))
    {
      Serial.println("OVERFLOW");
    }
    else if(cmd[0] == '/')
    {
      sscanf(cmd, "%[^=]=%[^=]", buff0, buff1);

      for (int j=0; j<nbOutParams; j++)
      {
        if (strcmp(buff0, outParams[j]) == 0) // returns 0 if equal
        {
          //Serial.print(outParams[j]);
          //Serial.println(" changed");
          int fn = outParamsIdx[j][0];
          
          byte val;
          if(fn==0)
          {
            if(strcmp(buff1,"false")==0) val = 0;
            if(strcmp(buff1,"true")==0) val = 1;
          }
          else if(fn==1)
          {
            val = (byte)atoi(buff1);
          }
          if(val)
          {
            outBytes[outParamsIdx[j][1]] |= (1 << outParamsIdx[j][2]);
          }
          else
          {
            outBytes[outParamsIdx[j][1]] &= ~(1 << outParamsIdx[j][2]);
          }
        }
      }
      writeShiftRegisters(); // Pushes the updates internal buffer to the SR
    }
  //}
  //delay(period); // Waits before reading the inputs again
}

void latch()
{
  digitalWrite(LATCHIN, LOW); //Latch inputs
  delayMicroseconds(_pause);
  digitalWrite(LATCHIN, HIGH); //Start Polling inputs
  delayMicroseconds(_pause);
}

byte readShiftRegister()
{
    byte result = 0;
    for (i = 7; i >= 0; i--)
    {
      result = result | (digitalRead(DATA) << i);
      digitalWrite(CLK, HIGH);
      delayMicroseconds(_pause);
      digitalWrite(CLK, LOW);
      delayMicroseconds(_pause);
    }
    return result;
}

void writeShiftRegisters()
{
  //output mode
  pinMode(DATA, OUTPUT);
  digitalWrite(LATCHOUT, LOW);
  for (i=NB_OUT_SR-1; i>=0; i--)
  {
    //Serial.print("Push SR > ");
    //Serial.println(outBytes[i], BIN);
    shiftOut(DATA, CLK, LSBFIRST, outBytes[i]);
  }
  digitalWrite(LATCHOUT, HIGH);
}

void generateSetCommand(int* idx, byte data)
{
  char value = 0;

  if(idx[1] == 0) // 0 or 1
  {
    value = bitRead(data, idx[2]);
  }
  else if (idx[1] == 1) // 0 or 1 or 2
  {
    int a = bitRead(data, idx[2]);
    int b = bitRead(data, idx[3]);
    value = 1-a+b;
  }
  else if (idx[1] == 2) // -1 or 0 or 1
  {
    int a = bitRead(data, idx[2]);
    int b = bitRead(data, idx[3]);
    value = -a+b;
  }

  sprintf(cmd, "set %s %d\r\n", inParams[idx[0]], value);
  telnet.print(cmd); // Sends the command to flightgear
  
}

void subscribe()
{
  for (i=0; i<nbOutParams; i++)
  {
    sprintf(cmd, "subscribe %s\r\n", outParams[i]);
    
    telnet.print(cmd);
    
    /* Check and flush the feed back */
    readLineTelnet(feedback);
    Serial.print("subscribe to ");
    Serial.print(outParams[i]);
    Serial.print(" -- ");
    if(strncmp(feedback, cmd, strlen(cmd)-2) == 0)
    {
      Serial.println("SUCCESS");
    }
    else
    {
      Serial.println("FAIL");
      Serial.println(feedback);
    }
  }
}

bool startsWith(const char *a, const char *b)
{
   if(strncmp(a, b, strlen(b)) == 0) return 1;
   return 0;
}

bool readLineTelnet(char* buff)
{
  while(!telnet.available())
  {
    delayMicroseconds(1);
  }
  int i=0;
  c = static_cast<char>(telnet.read());
  while(c != '\n' & i<100)
  {
    buff[i] = c;
    i++;
    c = telnet.read();
  }
  
  buff[i-1] = '\0';
  return(i==100);
}

