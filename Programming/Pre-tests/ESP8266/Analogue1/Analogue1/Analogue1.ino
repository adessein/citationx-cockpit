void setup()
{
  Serial.begin(115200);
}


void loop()
{
  // read the input on analog pin 0:
  int sensorValue = analogRead(A0);
  // Convert the analog reading (which goes from 0 - 1023) to a 0/1:
  float value = sensorValue / 1024.0;
  // print out the value you read:
  Serial.println(value, DEC);
}
