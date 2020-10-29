#define delVerteM1 4
#define delRougeM1 7 //ne pas mettre HIGH en meme temps...
#define enableM1 3 //PWM sur les enables

#define delVerteM2 10
#define delRougeM2 8 //ne pas mettre HIGH en meme temps...
#define enableM2 5

#define delVerteM3 A3
#define delRougeM3 A0 //ne pas mettre HIGH en meme temps...
#define enableM3 6

#define delVerteM4 A2
#define delRougeM4 A1 //ne pas mettre HIGH en meme temps...
#define enableM4 9

void setup() {
  pinMode(delVerteM1, OUTPUT);
  pinMode(delRougeM1, OUTPUT);
  pinMode(enableM1, OUTPUT); 
  
  pinMode(delVerteM2, OUTPUT);
  pinMode(delRougeM2, OUTPUT);
  pinMode(enableM2, OUTPUT);  

  pinMode(delVerteM3, OUTPUT);
  pinMode(delRougeM3, OUTPUT);
  pinMode(enableM3, OUTPUT);  

  pinMode(delVerteM4, OUTPUT);
  pinMode(delRougeM4, OUTPUT);
  pinMode(enableM4, OUTPUT); 
       
  Serial.begin(9600);

  //TEST PWM//
  digitalWrite(delVerteM1, HIGH);
  digitalWrite(delVerteM2, HIGH);
  digitalWrite(delVerteM3, HIGH);
  digitalWrite(delVerteM4, HIGH);

  for(int i=0;i<255;i++)
  {
    analogWrite(enableM1, i);
    analogWrite(enableM2, i);
    analogWrite(enableM3, i);
    analogWrite(enableM4, i);
    delay(50);
  }
   digitalWrite(delVerteM1, LOW);
  digitalWrite(delVerteM2, LOW);
  digitalWrite(delVerteM3, LOW);
  digitalWrite(delVerteM4, LOW);

    digitalWrite(delRougeM1, HIGH);
  digitalWrite(delRougeM2, HIGH);
  digitalWrite(delRougeM3, HIGH);
  digitalWrite(delRougeM4, HIGH);
  for(int i=0;i<255;i++)
  {
    analogWrite(enableM1, i);
    analogWrite(enableM2, i);
    analogWrite(enableM3, i);
    analogWrite(enableM4, i);
    delay(50);
  }
}

void loop() {
  digitalWrite(enableM1, HIGH);
  digitalWrite(enableM2, HIGH);
  digitalWrite(enableM3, HIGH);
  digitalWrite(enableM4, HIGH);

  digitalWrite(delVerteM1, HIGH);
  digitalWrite(delVerteM2, HIGH);
  digitalWrite(delVerteM3, HIGH);
  digitalWrite(delVerteM4, HIGH);

  digitalWrite(delRougeM1, LOW);
  digitalWrite(delRougeM2, LOW);
  digitalWrite(delRougeM3, LOW);
  digitalWrite(delRougeM4, LOW);
  
  Serial.println("ON");
  delay(1000);

  digitalWrite(delVerteM1, LOW);
  digitalWrite(delVerteM2, LOW);
  digitalWrite(delVerteM3, LOW);
  digitalWrite(delVerteM4, LOW);

  digitalWrite(delRougeM1, HIGH);
  digitalWrite(delRougeM2, HIGH);
  digitalWrite(delRougeM3, HIGH);
  digitalWrite(delRougeM4, HIGH);

  Serial.println("OFF");
  delay(1000);

}
