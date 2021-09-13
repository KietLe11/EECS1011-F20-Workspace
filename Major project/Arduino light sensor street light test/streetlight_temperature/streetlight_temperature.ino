#include <dht.h>
dht DHT;
#define DHT11_PIN 7
const int analogInPin = A0;
const int ledPin = 8;

int sensor = 0;  

void setup() {
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  sensor =analogRead(analogInPin);

   int chk = DHT.read11(DHT11_PIN);
  Serial.print("Temperature = ");
  Serial.println(DHT.temperature);
  Serial.print("Humidity = ");
  Serial.println(DHT.humidity);
  delay(1000);

  if(sensor >= 14){
    digitalWrite(ledPin,LOW);
  }
  else if(sensor <14){
    digitalWrite(ledPin,HIGH);
  }



}
