/* ESP8266 pin allocation */
const int CLK_INH = 13;
const int DATA = 12;
const int CLK = 14;
const int LATCH = 16;


/* Timing constants */
const int pause = 4;
const int period = 100; // ms

byte data1, data2;

void setup()
{
  pinMode(LED_BUILTIN, OUTPUT); // Initialize the LED_BUILTIN pin as an output
  pinMode(LATCH, OUTPUT); // Pin asking the register to read the pin states
  pinMode(CLK, OUTPUT);         // Clock pin
  pinMode(CLK_INH, OUTPUT);     // Pin the inhibits the clock signal
  digitalWrite(CLK_INH, HIGH);  // Starting with an inhibited clock
  Serial.begin(19200);          // Speed for the serial port (debuging only)
}

void loop()
{
  /* input mode */
  pinMode(DATA, INPUT);
  
  digitalWrite(LATCH, LOW); //Latch inputs
  delayMicroseconds(pause);
  digitalWrite(LATCH, HIGH); //Start Polling inputs
  delayMicroseconds(pause);
  
  digitalWrite(CLK_INH, LOW);
  data1 = readShiftRegister();
  data2 = readShiftRegister();
  digitalWrite(CLK_INH, HIGH);
  
  Serial.println(data1, BIN);
  //Serial.println(data2, BIN);
  
  //output mode
  pinMode(DATA, OUTPUT);
  digitalWrite(LATCH, LOW);
  shiftOut(DATA, CLK, MSBFIRST, data1);
  digitalWrite(LATCH, HIGH);
  
  delay(period);
  
}


byte readShiftRegister()
{
    byte result = 0;
    for (int idx = 7; idx >= 0; idx--)
    {
      result = result | (digitalRead(DATA) << idx);
      digitalWrite(CLK, HIGH);
      delayMicroseconds(pause);
      digitalWrite(CLK, LOW);
      delayMicroseconds(pause);
    }
    return result;
}
