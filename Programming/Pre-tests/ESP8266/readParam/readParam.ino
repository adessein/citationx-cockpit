#include <ESP8266WiFi.h>


/* Wifi access point settings */
const char* ssid     = "<SSID>";
const char* password = "<PASSWORD>";

/* Flightgear telnet server settings */
//IPAddress server(192, 168, 0, 101); // Factory
IPAddress server(192, 168, 1, 11); // Home
const int port = 5050;

WiFiClient telnet;

char cmd[100];
char feedback[100];
char buff0[100];
char buff1[100];
int a;
const int pause = 4;

void setup()
{
  Serial.begin(19200);
  WifiConnect();                // Connected to the Wifi AP
  TelnetConnect();
  readIntParam("/instrumentation/nav/radials/selected-deg", &a);
  Serial.print(a);
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

void readIntParam(char* p, int* val)
{
  sprintf(cmd, "get %s\r\n", p);
  telnet.flush();
  telnet.print(cmd);
  readLineTelnet(feedback);
  sscanf(feedback, "%d",val);
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


void loop() {}
