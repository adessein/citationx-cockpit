//https://techtutorialsx.com/2016/12/11/esp8266-external-interrupts/

#include <Wire.h>
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

byte tempByte1, tempByte2;
byte ab;
byte clk, dt, sw;
byte p=3;
char cmd[100];

word prevStates[NB_PCF];
word currStates[NB_PCF];
// PCF# RE# counter_param func button_param 
char* ieParams[] = { "instrumentation/nav/radials/selected-deg", /*CRS1*/
                     "autopilot/settings/heading-bug-deg", /*HDG*/
                     "instrumentation/nav[1]/radials/selected-deg", /*CRS2*/
                     "autopilot/settings/asel", /*ALT sel*/
                     "autopilot/settings/heading-bug-deg" /*HDG*/
                          /*{X,X,"instrumentation/nav[1]/radials/selected-deg","/crs"} /*CRS de lu truc complique*/
                    };
int ieParamsIdx[5][2] = { {0,0}, {0,1}, {0,2}, {0,3}, {0,4} };
int ieAdd[1] = {32};


void setup()
{
  Wire.begin(); // join i2c bus (address optional for master)
  Serial.begin(19200);
  for(int i=0; i<NB_PCF; i++)
  {
    prevStates[i] = 0xFFFF;
  }
  pinMode(interruptPin, INPUT);
  attachInterrupt(digitalPinToInterrupt(interruptPin), handleInterrupt, FALLING);
}

byte extractABP(word w, byte i)
{
  // SWITCH DATA CLOCK
  return( lowByte( (w & (0b111 << 3*i)) >> 3*i) );
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
          //CCW;
          sprintf(cmd, "Decrement %s", ieParams[j]);
          Serial.println(cmd);
        }
        if (abp == 0b101)
        {
           //CW
          sprintf(cmd, "Increment %s", ieParams[j]);
          Serial.println(cmd);
        }
        if (abp == 0b011)
        {
          //PB;
          if(j == 3)
          {
            sprintf(cmd, "Assign %s <- 100", ieParams[j]);
            Serial.println(cmd);
          }
          else
          {
            sprintf(cmd, "Assign %s <- %s", ieParams[j], "orientation/heading-magnetic-deg");
            Serial.println(cmd);
          }
        }
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

void loop() {}
