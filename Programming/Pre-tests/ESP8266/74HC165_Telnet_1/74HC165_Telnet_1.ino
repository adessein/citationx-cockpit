/* Demo program that uses 2  input shift register
 * Use of the D1 Mini
 * Only this code works because there is a problem with the polarity
 * of the closk signal. I have tried SPI in all modes without success
 * This code comes from 
 * https://www.reddit.com/r/AskElectronics/comments/6d7sby/problems_connecting_74hc165_piso_shift_register/
 * ESP8266 GPIO 16 D0 pin  4 - pin  1 74HC165 SH/LD*  (LATCH)
 * ESP8266 GPIO 14 D5 pin  5 - pin  2 74HC165 CLK (CLOCK)
 * ESP8266 GPIO 12 D6 pin  6 - pin  9 74HC165 QH   (DATA)
 * ESP8266 GPIO 13 D7 pin  7 - pin 15 74HC165 CLH INH
 * ESP8266 3V3        pin  8 - pin 16 74HC165 VCC
 * ESP8266 G          pin 15 - pin  8 74HC165 GND
  */

#include <ESP8266WiFi.h>

const char* ssid     = "<SSID>";
const char* password = "<PASSWORD>";
//IPAddress server(192, 168, 0, 101); // Factory
IPAddress server(192, 168, 1, 11); // Home
int port = 5050;
WiFiClient telnet;


const int QH = 12;
const int INPUT_LATCH = 16;
const int CLK = 14;
const int CLK_INH = 13;
const int pause = 4;
const int period = 100; // ms
const int NB_SR = 2;  // Number of shift registers to be read

char* paramTab[] = { "controls/anti-ice/pitot-heat", // 0,1
                     "controls/anti-ice/pitot-heat[1]", // 0,1
                     "controls/anti-ice/window-heat", // 0,1
                     "controls/anti-ice/window-heat[1]", // 0,1
                     "controls/electric/battery-switch", // 0,1
                     "controls/electric/battery-switch[1]", // 0,1
                     "controls/electric/avionics-switch"}; // 0,1,2

/* cmdGenTab has N lines and 4 colums for N parameters 
 * cmdGenTab[][0] is the Shift register number (1,2,...)
 * cmdGenTab[][1] is the parameter index in paramTab
 * cmdGenTab[][2] is the function to be used to generate the value to be passed
 * cmdGenTab[][3] is the bit index to be used as first variable in the equation for calculation the value
 * cmdGenTab[][4] is the bit index to be used as second variable in the equation for calculation the value
 */
int cmdGenTab[7][5] = { {0,0,0,0,0},
                        {0,1,0,1,0},
                        {0,2,0,2,0},
                        {0,3,0,3,0},
                        {0,4,0,4,0},
                        {0,5,0,5,0},
                        {0,6,1,6,7}};



char data[16];
char cmd[50];
int i;
int paramIdx;

void setup()
{
  pinMode(LED_BUILTIN, OUTPUT);     // Initialize the LED_BUILTIN pin as an output
  pinMode(QH, INPUT);
  pinMode(INPUT_LATCH, OUTPUT);
  pinMode(CLK, OUTPUT);
  pinMode(CLK_INH, OUTPUT);
  digitalWrite(CLK_INH, HIGH);
  Serial.begin(19200);
  WifiConnect();
}

void WifiConnect()
{
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

  // if you get a connection, report back via serial:
  if (telnet.connect(server, port)) {
    Serial.println("connected to server");
    digitalWrite(LED_BUILTIN, HIGH);
    delay(50);
  }
  else {
    // if you didn't get a connection to the server:
    Serial.println("connection to server failed");
    digitalWrite(LED_BUILTIN, LOW);
  }

}

void loop()
{
  latch();
  // It is onportant not to CLK_INH high between the two registers,
  // otherwise it shifts the second register
  digitalWrite(CLK_INH, LOW);  
  paramIdx = 0;
  for(int sr=0; sr<NB_SR; sr++)
  {
    byte data = readShiftRegister();
    while(cmdGenTab[paramIdx][0] == sr)
    {
      // Generates all commands related to this shift register
      generateCommand(cmdGenTab[paramIdx], data);
      paramIdx++;
    }
  }
  digitalWrite(CLK_INH, HIGH);
  
  delay(period);
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
      result = result | (digitalRead(QH) << idx);
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
  
  if(idx[2] == 0)
  {
    // Extracts the bit at position idx[3] in the byte data
    value = (data & (1 << idx[3])) >> idx[3];
  }
  else if (idx[2] == 1)
  {
    char a = (data & (1 << idx[3])) >> idx[3];
    char b = (data & (1 << idx[4])) >> idx[4];
    value = 1-a+b;
  }
  
  sprintf(cmd, "set %s %d\r\n", paramTab[idx[1]], value);
  Serial.print(cmd);
  telnet.print(cmd);
  telnet.flush();
}
