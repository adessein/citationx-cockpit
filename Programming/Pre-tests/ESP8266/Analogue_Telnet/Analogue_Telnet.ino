#include <ESP8266WiFi.h>

const int pause = 4;
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
  delay(pause);
}


void setup()
{
  Serial.begin(115200);
  WifiConnect();                // Connected to the Wifi AP
  TelnetConnect();
}


void loop()
{
  value = analogRead(A0) / 1024.0;
  
  sprintf(cmd, "set /controls/lighting/flood %.2f\r\n", value);
  //Serial.print(cmd);
  telnet.print(cmd); // Sends the command to flightgear
  
  sprintf(cmd, "set /controls/flight/speedbrake %.2f\r\n", value);
  //Serial.print(cmd);
  telnet.print(cmd); // Sends the command to flightgear
  delay(period);
}
