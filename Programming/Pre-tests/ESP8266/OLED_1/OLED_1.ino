#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define OLED_SDA   D7  //MOSI
#define OLED_SCL   D5  //CLK


Adafruit_SSD1306 display(OLED_SDA,OLED_SCL, OLED_DC, OLED_RESET, OLED_CS);

void setup()  
{
  display.begin(SSD1306_SWITCHCAPVCC); 
  display.setTextColor(WHITE);
}  

void loop()
{
  dispTime();
  delay(3000);
  display.clearDisplay();
}

void dispTime()
{
  display.setTextSize(3);
  display.setCursor(25,6);
  display.print("24.0"); 
}
