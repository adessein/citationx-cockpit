/* Demo program that used input shift register
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

const int QH = 12;
const int INPUT_LATCH = 16;
const int CLK = 14;
const int CLK_INH = 13;
const int pause = 4;
const int period = 1e6; // 1000 us

void setup()
{
  pinMode(LED_BUILTIN, OUTPUT);     // Initialize the LED_BUILTIN pin as an output
  pinMode(QH, INPUT);
  pinMode(INPUT_LATCH, OUTPUT);
  pinMode(CLK, OUTPUT);
  pinMode(CLK_INH, OUTPUT);
  digitalWrite(CLK_INH, HIGH);
  Serial.begin(9600);
}

void loop()
{
  digitalWrite(LED_BUILTIN, HIGH);
  latch();
  // It is onportant not to CLK_INH high between the two registers,
  // otherwise it shifts the second register
  digitalWrite(CLK_INH, LOW);  
  byte Data1 = readShiftRegister();
  byte Data2 = readShiftRegister();
  digitalWrite(CLK_INH, HIGH);
  
  digitalWrite(LED_BUILTIN, LOW);
  Serial.print(Data1, DEC);
  Serial.print(" - ");
  Serial.println(Data2, DEC);
  delayMicroseconds(period);
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
