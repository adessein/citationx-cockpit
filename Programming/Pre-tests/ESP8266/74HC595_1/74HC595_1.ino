/* Demo program that used output shift register that counts in binary
 * Use of the D1 Mini
 * ESP8266 GPIO 12 D6 pin  6 - pin 14 74HC595 SER   (DATA)
 * ESP8266 GPIO 13 D7 pin  7 - pin 12 74HC595 RCLK  (LATCH)
 * ESP8266 GPIO 15 D8 pin 16 - pin 11 74HC595 SRCLK (CLOCK)
 * ESP8266 3V3        pin  8 - pin 10 74HC595 /SRCLR
 *                           - pin 16 74HC595 VCC
 * ESP8266 G          pin 15 - pin  8 74HC595 GND
 *                           - pin 13 74HC595 /OE
  *///

const int dataPin = 12;   //Outputs the byte to transfer 
const int loadPin = 13;   //Controls the internal transference of data in SN74HC595 internal registers (LATCH)
const int clockPin = 15;  //Generates the clock signal to control the transference of data
const int pause = 200;
int counter = 0;

void setup() {

pinMode(dataPin, OUTPUT);
pinMode(loadPin, OUTPUT);
pinMode(clockPin, OUTPUT);

}

void loop()
{
  
  digitalWrite(loadPin, LOW);
  shiftOut(dataPin, clockPin, MSBFIRST, counter++);
  digitalWrite(loadPin, HIGH);
  delay(pause);
}

