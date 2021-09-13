
const int analogInPin = A0;
const int ledPin = 8;

int sensor = 0;  

void setup() {
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  sensor =analogRead(analogInPin);

  if(sensor != 0){
    digitalWrite(ledPin,LOW);
  }
  else 
    digitalWrite(ledPin,HIGH);

  Serial.print(sensor);

}
