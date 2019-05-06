/* This programs controls 11 parameters in FlightGear with two input
 * shift registers.
 * Detection of bit state change and send of the corresponding command via telnet
 * 
 * 
 * Demo program that uses 2 input shift register and a D1 Mini
 * https://www.reddit.com/r/AskElectronics/comments/6d7sby/problems_connecting_74hc165_piso_shift_register/
 * ESP8266 GPIO 16 D0 pin  4 - pin  1 74HC165 SH/LD*  (LATCH)
 * ESP8266 GPIO 14 D5 pin  5 - pin  2 74HC165 CLK (CLOCK)
 * ESP8266 GPIO 12 D6 pin  6 - pin  9 74HC165 QH   (DATA)
 * ESP8266 GPIO 13 D7 pin  7 - pin 15 74HC165 CLH INH
 * ESP8266 3V3        pin  8 - pin 16 74HC165 VCC
 * ESP8266 G          pin 15 - pin  8 74HC165 GND
  */

#include <ESP8266WiFi.h>

#define NB_SR 2  // Number of shift registers to be read

/* Wifi access point settings */
const char* ssid     = "<SSID>";
const char* password = "<PASSWORD>";

/* Flightgear telnet server settings */
//IPAddress server(192, 168, 0, 101); // Factory
IPAddress server(192, 168, 1, 11); // Home
const int port = 5050;

WiFiClient telnet;

/* ESP8266 pin allocation */
const int DATA = 12;
const int INPUT_LATCH = 16;
const int CLK = 14;
const int CLK_INH = 13;

/* Timing constants */
const int pause = 4;
const int period = 100; // ms

/* variables */
byte prevStatus[NB_SR];
char cmd[100];
bool paramUpdated[20]; // tels if a parameter has already be updated by another bit (3 state switches)
bool firstRead;
byte diffMask, data;
char c;
int i;

/* Flightgear parameters */
char* paramTab[] = { "controls/lighting/emer-light",
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

char* inParamTab[] = {"services/ext-pwr/enable"};

char buff0[50];
char buff1[50];
char buff2[50];

/* cmdGenTab is a llok-up table that tels for each bit, what is the
 * associated parameter, which function should be use to calculate the 
 * new value and which bits should be used in this function.
 * cmdGenTab has 3 dimensions
 *  - first dimension is the number of shift registers
 *  - second dimension os the bit number
 *  - third dimention is the index of the information
 *      - [0] is the index of the parameter in paramTab
 *      - [1] is the function to be used to generate the value to be passed
 *      - [2] is the bit index to be used as first variable in the equation for calculation the value
 *      - [3] is the bit index to be used as second variable in the equation for calculation the value
 */
int cmdGenTab[2][8][4] =  { {
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

void setup()
{
  pinMode(LED_BUILTIN, OUTPUT); // Initialize the LED_BUILTIN pin as an output
  pinMode(INPUT_LATCH, OUTPUT); // Pin asking the register to read the pin states
  pinMode(CLK, OUTPUT);         // Clock pin
  pinMode(CLK_INH, OUTPUT);     // Pin the inhibits the clock signal
  digitalWrite(CLK_INH, HIGH);  // Starting with an inhibited clock
  Serial.begin(19200);          // Speed for the serial port (debuging only)
  WifiConnect();                // Connected to the Wifi AP
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

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  
  Serial.println("");
  Serial.println("WiFi connected");  
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  if (telnet.connect(server, port)) {
    // if connection, report back via serial
    Serial.println("connected to server");
    digitalWrite(LED_BUILTIN, HIGH);
    delay(50);
  }
  else {
    Serial.println("connection to server failed");
    digitalWrite(LED_BUILTIN, LOW);
  }

}

void loop()
{
  pinMode(DATA, INPUT);
  
  if(firstRead) Serial.println("First readout");
  
  latch(); // Ask the registers to read their inputs
  
  /* It is onportant *not* to CLK_INH high between the two registers,
   * otherwise it shifts the second register*/
  digitalWrite(CLK_INH, LOW);
  
  for(int sr=0; sr<NB_SR; sr++) // For each shift register
  {
    data = readShiftRegister();
    
    /* The bits which state has changed are identified by 
     * XOR operation which gives 1 where bits are different*/
    diffMask = data ^ prevStatus[sr];
    
    for(int b=0; b<8; b++) // For each bit
    {
      if((bitRead(diffMask, b) & !paramUpdated[cmdGenTab[sr][b][0]]) | firstRead)
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
        generateCommand(cmdGenTab[sr][b], data);
        paramUpdated[cmdGenTab[sr][b][0]] = true;
      }
    }
    
    prevStatus[sr] = data;
    for (int i=0; i<20; i++) paramUpdated[i] = false;
  }
  
  digitalWrite(CLK_INH, HIGH);
  
  if(firstRead)
  {
    Serial.println("End of first readout");
    firstRead = false;
  }
  
  while (telnet.available())
  {
      c = static_cast<char>(telnet.read());
      if (c=='\n')
      {
        cmd[i-1] = '\0';
        i=0;
        Serial.println("Nouvelle commande");
        Serial.println(cmd);
        Serial.println(cmd[0]);
        Serial.println(cmd[1]);
        if(cmd[3] == '/')
        {
          Serial.println("YES");
          sscanf(cmd, "/> %[^=]=%[^=]", buff0, buff1);
          Serial.println(buff0);
          Serial.println(buff1);
        }
      }
      else
      {
        cmd[i] = c;
        i++;
      }
    
    //pinMode(DATA, OUTPUT);*/
  }
  
  
  delay(period); // Waits before reading the inputs again
}

void latch()
{
  digitalWrite(INPUT_LATCH, LOW); //Latch inputs
  delayMicroseconds(pause);
  digitalWrite(INPUT_LATCH, HIGH); //Start Polling inputs
  delayMicroseconds(pause);
}

byte readShiftRegister()
{
    byte result = 0;
    for (int idx = 7; idx >= 0; idx--)
    {
      result = result | (digitalRead(DATA) << idx);
      digitalWrite(CLK, HIGH);
      delayMicroseconds(pause);
      digitalWrite(CLK, LOW);
      delayMicroseconds(pause);
    }
    return result;
}

void generateCommand(int* idx, byte data)
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
  
  sprintf(cmd, "set %s %d\r\n", paramTab[idx[0]], value);
  Serial.print(cmd);
  telnet.print(cmd); // Sends the command to flightgear
  telnet.flush(); // fushes the buffer (important to clear the />)
}

void subscribe()
{
  sprintf(cmd, "subscribe %s\r\n", inParamTab[0]);
  telnet.print(cmd);
  telnet.flush();
}
