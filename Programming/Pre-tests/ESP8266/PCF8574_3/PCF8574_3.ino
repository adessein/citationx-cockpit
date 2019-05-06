/* Final demo program to read several rotary encoder using PCF8574
 * and update the values in flightgear via Telnet
 * 
 * Reads the value of different rotary encoders from fgfs and
 * stores the values localy at startup (reading periodically the values
 * from FG takes too much time, therefore any manual change in the game
 * is discarded. Maybe I could implement that by subscribint to the
 * values (do not forget to flush after writing a new value because that
 * will issue an update)
 * 
 * Lesson learned :
 * - Do no try to comminucate in telnet in the interruption it does not
 * work and is probably not efficient. It is better to modfify an
 * internal value and then send the telnet command in the main loop
 * - Reading a value from FG is slow, especially compared to how fast
 * the values changes with a rotary encoder.
 * - Use GPIO2 for the interrupt pin. I have tried GPIO0 but sudently
 * it stop working, figure out why...
 * - SCL, SDA, INT should be pulled up. It is fine to do the INT pull up
 * hardare-wise instead of using the INPUT_PULLUP mode 
 * - GPIO4/SDA should be pulled up, except while flashing the ESP because
 * it does not work. I do not know why. Maybe I should put a switch in
 * the final design in order to be able to remove the pull up.
 *   -> Problem seems to be solved using Genereic ESP8266 Module with 
 * reset method nodemcu
 * - When using get on telnet, the paramter should start with a /
 */

//https://techtutorialsx.com/2016/12/11/esp8266-external-interrupts/

#include <Wire.h>
#include <ESP8266WiFi.h>
#define NB_PCF 1

const int I2C_ADD=32; // LLL is 32
const byte interruptPin = 2;

/* Wifi access point settings */
const char* ssid     = "<SSID>";
const char* password = "<PASSWORD>";

/* Flightgear telnet server settings */
//IPAddress server(192, 168, 0, 101); // Factory
IPAddress server(192, 168, 1, 11); // Home
const int port = 5050;


WiFiClient telnet;
byte tempByte1, tempByte2;
word tempWord;
byte ab;
char cmd[100];
char feedback[100];
int c, val;

word prevStates[NB_PCF];
word currStates[NB_PCF];
// the first / is important for get !!!
char* ieParams[] = { "/autopilot/settings/heading-bug-deg", /*HDG*/
                     "/instrumentation/nav/radials/selected-deg", /*CRS1*/
                     "/instrumentation/nav[1]/radials/selected-deg", /*CRS2*/
                     "/autopilot/settings/asel", /*ALT sel*/
                     "/autopilot/settings/heading-bug-deg" /*HDG*/
                    };
int paramValues[5] = {0,0,0,0,0};
char upadateFlag[5] = {0,0,0,0,0};
int ieAdd[1] = {32};
const int pause = 4;

void setup()
{
  Serial.begin(19200);
  WifiConnect();
  TelnetConnect();
  Wire.begin();
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
  //Serial.print(cmd);
  telnet.flush();
  telnet.print(cmd);
  readLineTelnet(feedback);
  //Serial.print(feedback);
  sscanf(feedback, "%d",val);
}

void readFloatParam(char* p, float* val)
{
  sprintf(cmd, "get %s\r\n", p);
  //Serial.print(cmd);
  telnet.flush();
  telnet.print(cmd);
  readLineTelnet(feedback);
  //Serial.print(feedback);
  sscanf(feedback, "%f",val);
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
          upadateFlag[j]=1;
        }
        if (abp == 0b101)
        {
          //Serial.println("clockwise");
          upadateFlag[j]=2;
        }
        if (abp == 0b011)
        {
          //Serial.println("Button pressed");
          upadateFlag[j]=3;
        }
      }
    }
    else
    {
      tempWord = tempByte2;
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
  c = static_cast<char>(telnet.read());
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
  for(int i=0; i<1; i++)
  {
    if(upadateFlag[i] == 3)
    {
      if(i == 3)
      {
        val = 100;
      }
      else
      {
        float temp;
        readFloatParam("/orientation/heading-magnetic-deg", &temp);
        paramValues[i] = round(temp);
      }
    }
    else if(upadateFlag[i] == 2)
    {
      paramValues[i] = (paramValues[i]+1)% 360;
    }
    else if(upadateFlag[i] == 1)
    {
      paramValues[i]=((paramValues[i]-1) + 360) % 360;
    }
    else if(upadateFlag[i] == 0)
    {
      break;
    }
    
    if(upadateFlag[i] != 0)
    {
      sprintf(cmd, "set %s %d\r\n", ieParams[i], paramValues[i]);
      upadateFlag[i] = 0;
      telnet.write(cmd);
    }
  }
}

