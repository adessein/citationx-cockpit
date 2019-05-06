/* Change flap and floods light with a potentiometer
 * VERSION ESP32
 */
 

#ifdef ESP32
  #include <WiFi.h>
#else
  #include <ESP8266WiFi.h>
#endif

#ifdef ESP32
  #include <driver/adc.h>
  #define LED_BUILTIN 2
#endif

#ifdef ESP32
  #define ADC_PIN 36
#else
  #define ADC_PIN A0
#endif


/* ESP3266 10 bits 1024
 * ESP32 12 bits 4096 */
#ifdef ESP32
  #define SCALE_ADC 4096.0
#else
  #define SCALE_ADC 1024.0
#endif

const int _pause = 4;
const int period = 10; // ms

char cmd[100];
float value;

/* Wifi access point settings */
const char* ssid     = "<SSID>";
const char* password = "<PASSWORD>";

/* Flightgear telnet server settings */
//IPAddress server(192, 168, 0, 101); // Factory
IPAddress server(192, 168, 1, 11); // Home
const int port = 5050;

WiFiClient telnet;

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


void setup()
{
  Serial.begin(115200);
  WifiConnect();                // Connected to the Wifi AP
  TelnetConnect();
  #ifdef ESP32
    // Limit voltage on PIN GPIO36/ADC1 CHO to 3.2V
    // There is not resisitor on the board but the input is limited to 1.1V
    /* ADC_ATTEN_0db = 1.1v
     * ADC_ATTEN_2_5db = 1.4v
     * ADC_ATTEN_6db = 1.9v
     * ADC_ATTEN_11db = 3.2v
     */
    adc1_config_channel_atten(ADC1_CHANNEL_0, ADC_ATTEN_11db);
  #endif
}


void loop()
{

  value = analogRead(ADC_PIN) / SCALE_ADC; 
  
  // %.3f makes it even smoother
  sprintf(cmd, "set /controls/lighting/flood %.3f\r\n", value);
  //Serial.print(cmd);
  telnet.print(cmd); // Sends the command to flightgear
  
  sprintf(cmd, "set /controls/flight/speedbrake %.3f\r\n", value);
  //Serial.print(cmd);
  telnet.print(cmd); // Sends the command to flightgear
  delay(period);
}
