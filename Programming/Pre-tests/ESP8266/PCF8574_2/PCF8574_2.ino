// PCF8574_2.ino
/* Reads the value of different rotary encoders from fgfs and makes it
 * possible to change these values with RE connected to PCF8574
 * Do no try to comminucate in telnet in the interruption it does not
 * work and is probably not efficient. It is better to modfify an
 * internal value and then send the telnet command in the main loop
 * TODO : create an array of fallback values that is updated in the main
 * loop. If the user press the button the falcback value is affected,
 * in the exception
 * NO, if it is not too slow
 * the exception should change a change int
 *  -1 = --
 *   0 = do not change
 *   1 = ++
 *   2 = -- ++ =falback)
 * that is interpreted in the main llop (which reads the value at each
 * turn)
 */

//https://techtutorialsx.com/2016/12/11/esp8266-external-interrupts/

#include <Wire.h>
#include <ESP8266WiFi.h>
#define NB_PCF 1

const int I2C_ADD=32; // LLL is 32

const byte interruptPin = 2;
/* which interrupt pin to choose ?
 * GPIO 0
 * I did a lot of test with 0 in INPUT_PULLUP mode and sudently it did not work
 * The program crashed ager printing Hello
 * I have tried manual pull up with INPUT mode without success.
 * GPIO 2
 * It seems the best choice but the interrupt pin should be removed while
 * flashing the ESP
 */

/* Wifi access point settings */
const char* ssid     = "<SSID>";
const char* password = "<PASSWORD>";

/* Flightgear telnet server settings */
//IPAddress server(192, 168, 0, 101); // Factory
IPAddress server(192, 168, 1, 11); // Home
const int port = 5050;

WiFiClient telnet;

byte tempByte1, tempByte2;
byte ab;
byte clk, dt, sw;
byte p=3;
char cmd[100];
char feedback[100];
char buff0[100];
char buff1[100];
char buff2[50];
int c;

word prevStates[NB_PCF];
word currStates[NB_PCF];
// PCF# RE# counter_param func button_param 
// the first / is important for get !!!
char* ieParams[] = { "/autopilot/settings/heading-bug-deg", /*HDG*/
  "/instrumentation/nav/radials/selected-deg", /*CRS1*/
                     "/instrumentation/nav[1]/radials/selected-deg", /*CRS2*/
                     "/autopilot/settings/asel", /*ALT sel*/
                     "/autopilot/settings/heading-bug-deg" /*HDG*/
                          /*{X,X,"instrumentation/nav[1]/radials/selected-deg","/crs"} /*CRS de lu truc complique*/
                    };
int paramValues[5] = {0,0,0,0,0};
bool upadateFlag[5] = {false,false,false,false,false};
int ieParamsIdx[5][2] = { {0,0}, {0,1}, {0,2}, {0,3}, {0,4} };
int ieAdd[1] = {32};
const int pause = 4;

void setup()
{
  Serial.begin(19200);
  WifiConnect();                // Connected to the Wifi AP
  TelnetConnect();
  Wire.begin(); // join i2c bus (address optional for master)
  for(int i=0; i<NB_PCF; i++)
  {
    prevStates[i] = 0xFFFF;
  }
  for(int i=0; i<5; i++)
  {
    readIntParam(ieParams[i],&(paramValues[i]));
  }
  
  
  pinMode(interruptPin, INPUT);
  attachInterrupt(digitalPinToInterrupt(interruptPin), handleInterrupt, FALLING);
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
  delay(pause);
}

byte extractABP(word w, byte i)
{
  // SWITCH DATA CLOCK
  return( lowByte( (w & (0b111 << 3*i)) >> 3*i) );
}

void readIntParam(char* p, int* val)
{
  sprintf(cmd, "get %s\r\n", p);
  Serial.print(cmd);
  telnet.flush();
  telnet.print(cmd);
  readLineTelnet(feedback);
  Serial.print(feedback);
  sscanf(feedback, "%d",val);
}

void handleInterrupt()
{
  for(int i=0; i<NB_PCF; i++)
  {
    ab=Wire.requestFrom(ieAdd[i],2,false);
    //Serial.println(ab, DEC);
    tempByte1 = Wire.read();
    tempByte2 = Wire.read();
    /*if(tempByte1 == 0xFF & tempByte2 == 0xFF) // not rotating, button released*/
    if(tempByte1 == 0b00000111 && tempByte2 == 0) // not rotating, button released
    {
      for(int j=0; j<5; j++)
      {
        byte abp = extractABP(prevStates[i],j);
        if (abp == 0b110)
        {
          //Serial.println("Counter-clockwise");
          paramValues[j] = ((paramValues[j]-1) + 360) % 360;
          upadateFlag[j] = true;
        }
        if (abp == 0b101)
        {
          //Serial.println("clockwise");
          paramValues[j] = (paramValues[j]+1)% 360;
          upadateFlag[j] = true;
        }
        /*
        if (abp == 0b011)
        {
          Serial.println("Button pressed");
          if(j == 3)
          {
            sprintf(cmd, "set %s = %d\r\n", ieParams[j], 100);
            Serial.print(cmd);
          }
          else
          {
            readIntParam("/orientation/heading-magnetic-deg", &c);
            sprintf(cmd, "set %s = %d\r\n", ieParams[j], c);
            Serial.print(cmd);
          } 
        }
        */
      }
    }
    else
    {
      word tempWord = tempByte2;
      tempWord = tempWord<<8;
      tempWord |= tempByte1;
      prevStates[i] = tempWord;
    }
  }
}

bool readLineTelnet(char* buff)
{
  while(!telnet.available())
  {
    delayMicroseconds(1);
  }
  int i=0;
  char c = static_cast<char>(telnet.read());
  while(c != '\n' & i<100)
  {
    //Serial.print(c);
    buff[i] = c;
    i++;
    c = telnet.read();
  }
  
  buff[i-1] = '\0';
  return(i==100);
}


void loop() {
  if(upadateFlag[0] == true)
  {
    sprintf(cmd, "set %s %d\r\n", ieParams[0], paramValues[0]);
    upadateFlag[0] = false;
    //Serial.print(cmd);
    telnet.write(cmd);
  }
  
}

