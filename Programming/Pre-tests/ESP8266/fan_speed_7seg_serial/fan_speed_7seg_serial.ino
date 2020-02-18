/* 
  Script for displaying fan speed on 7 segment diaply segment using ESP8266 and TM1637 7 seg diaply module
  
  1. Create the file /usr/share/games/flightgear/Protocol/citationx-serial.xml containting
        <?xml version="1.0"?>
        <PropertyList>
          <generic>
            <output>
              <line_separator>\n</line_separator>
              <var_separator>,</var_separator>
              <chunk>
                <name>fan0</name>
                <type>float</type>
                <node>/engines/engine[0]/fan</node>
                <format>fan0=%.1f</format>
              </chunk>
            </output>
          </generic>
        </PropertyList>
  2. Install library TM1637 1.2.0 - Avishay Orpaz - https://github.com/avishorp/TM1637
  3. Flash ESP8266 with this code
  4. Connect TM1637 module with CLK on D3 and DIO on D4
  5. Start flightgear with :
     $ fgfs --generic=serial,out,30,/dev/ttyUSB0,9600,citationx-serial
*/

#include <TM1637Display.h>
const int CLK = D3;
const int DIO = D4;
TM1637Display display(CLK, DIO);

void setup() {
  Serial.begin(9600);
  display.setBrightness(0x0a);
  display.clear();
  display.showNumberDecEx(1111, 0b00000000);
  delay(1000);
}

void loop() {
  if(Serial.available() > 14) // Wait until there are two bytes available. Then read them out.
  {
    String command;
    String var;
    char lastchar;

    while(lastchar != '=')
    {
      lastchar = Serial.read();
      if(lastchar != '=')
      {
        command += lastchar;
      }
    }
    while(lastchar != '\n')
    {
      lastchar = Serial.read();
      if(lastchar != '\n')
      {
        var += lastchar;
      }
    }
    /*
    if(command == "n10" )
    {
      float number = var.toFloat();
      int a = (int)(number*10);
      display.showNumberDecEx(a, 0b00100000);
    }
    */
    if(command == "itt0" )
    {
      float number = var.toFloat();
      int a = (int)(number*740);
      display.showNumberDecEx(a, 0b00000000);
    }
  }
  delay(10);

}
