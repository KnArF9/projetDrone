/*
 * Programme pour l'ATmega328PB pour le projet du drone. Le programme entend de recevoir une commande par le port série. La commande
 * va être une direction ou bien une vitesse. Le programme contrôle les moteurs et l'accéléromètre. Une fois que la commande a été exécuté, le programme  
 * envoie par le port série les valeurs de l'accéléromètre pour qu'elles soient affichées dans l'application cellulaire.
 * Par François Archambault
 * Pour Pierre Bergeron
 * Session Automne 2020
 */
//include
#include<Wire.h>
#include <math.h>
//******Moteur 1***********
#define delVerteM1 4 //choisir le sens
#define delRougeM1 7 
#define enableM1 3 //le pwm est appliqué sur cette pin

//******Moteur 2***********
#define delVerteM2 10//choisir le sens
#define delRougeM2 8 
#define enableM2 5//le pwm est appliqué sur cette pin

//******Moteur 3***********
#define delVerteM3 A3//choisir le sens
#define delRougeM3 A0 
#define enableM3 6//le pwm est appliqué sur cette pin

//******Moteur 4***********
#define delVerteM4 A2//choisir le sens
#define delRougeM4 A1 
#define enableM4 9//le pwm est appliqué sur cette pin

const int MPU=0x68;//pour accéléromètre
int16_t AcX,AcY,AcZ; //variables qui vont accueillir les données de l'accéléromètre
String command; //variable qui va accueillir la commande reçue par le port série
String dataReceive; //va accuillir 1 par 1 les caractères reçus par le port série avant qu'il soit mis dans command
String valeurACC = ""; //variable string qui va accuillir la string qui sera envoyée par le port série pour envoyer les valeurs de l'accéléromètre
String myStringX; //les trois variables pour aider à la conversion en string des valeurs int x, y, z
String myStringY; 
String myStringZ; 



void setup()
{
  Serial.begin(115200); //port série baudrate de 115200
  Wire.begin(); //pour accéléromètre
  Wire.beginTransmission(MPU);
  Wire.write(0x6B);
  Wire.write(0);
  Wire.endTransmission(true);
  //définition des moteurs comme des sorties
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
 //va juste allumer les dels vertes donc tous les moteurs vont aller du même sens
  digitalWrite(delVerteM1, HIGH);
  digitalWrite(delVerteM3, HIGH);
  digitalWrite(delRougeM1, LOW);
  digitalWrite(delRougeM3, LOW);
  digitalWrite(delVerteM2, HIGH);
  digitalWrite(delVerteM4, HIGH);
  digitalWrite(delRougeM2, LOW);
  digitalWrite(delRougeM4, LOW);    
  
}
void loop()
{
  Wire.beginTransmission(MPU);
  Wire.write(0x3B);
  Wire.endTransmission(false);
  Wire.requestFrom(MPU,14,true);
  int AcXoff,AcYoff,AcZoff;
  int myVitesse;
  char arrayVitesse[5];

  while(Serial.available())
  {
    dataReceive = (char)Serial.read();//caractères 1 par 1 
    if(dataReceive == "*")//si le caractère == *  Ca veut dire que c'est une direction qui a été envoyée
    {
      break; //sortir du while
    }
    else if(dataReceive == "/")//si le caractère == /  Ca veut dire que c'est une vitesse qui a été envoyée
    {
      break; //sortir du while
    }
    else
    {
      command = command + dataReceive;//accumule les informations de la commande (ex: Front)
    }    
  }
  
    AcXoff = 0; //pour correction du x y z (dans code de base de l'accéléromètre)
    AcYoff = 300;
    AcZoff = 0;
    
    
    //read accel data
    AcX=(Wire.read()<<8|Wire.read()) + AcXoff;
    AcY=(Wire.read()<<8|Wire.read()) + AcYoff;
    AcZ=(Wire.read()<<8|Wire.read()) + AcYoff;
  
    myStringX = String(AcX); //met les ints en strings pour pouvoir les envoyer par le port série
    myStringY = String(AcY);
    myStringZ = String(AcZ);
    valeurACC = " " + myStringX + " " + myStringY + " " + myStringZ + " " + "crap8266/*" + " "; //création de la string qui sera envoyée comme réponse à la commande reçue

    if(command.length() <4 && command.length() > 0) //si c'Est une vitesse valide
    {
        command.toCharArray(arrayVitesse,command.length()+1); //string en tableau de char
        myVitesse = (atoi(arrayVitesse)); //tableau de char en int pour pouvoir utiliser la vitese avec analogWrite
        
        if(myVitesse == 0) //éteint le drone
        {
          Serial.println(valeurACC); 
          analogWrite(enableM3, 0);
          analogWrite(enableM4, 0);
          analogWrite(enableM1, 0);
          analogWrite(enableM2, 0);
        }
        else //pWM avec la vitesse sur les 4 moteurs
        {
          Serial.println(valeurACC); 
          analogWrite(enableM3, myVitesse);
          analogWrite(enableM4, myVitesse);
          analogWrite(enableM1, myVitesse);
          analogWrite(enableM2, myVitesse);
        }
    }
   
   if(command == "Front") //si la commande reçue est Front
   {
      Serial.println(valeurACC); //envoie les valeurs de l'accéléromètre

      analogWrite(enableM3, (myVitesse + 150));//ajuste la vitesse des moteurs avec la direction voulue
      analogWrite(enableM4, (myVitesse + 150));
      analogWrite(enableM1, myVitesse);
      analogWrite(enableM2, myVitesse);
      command =""; //remet la commande à zéro 
   }  
   else if(command == "Back")//si la commande reçue est Back
   {
      Serial.println(valeurACC); //envoie les valeurs de l'accéléromètre
      analogWrite(enableM1, (myVitesse + 150)); //ajuste la vitesse des moteurs avec la direction voulue
      analogWrite(enableM2, (myVitesse + 150));
      analogWrite(enableM3, myVitesse);
      analogWrite(enableM4, myVitesse);   
      command ="";//remet la commande à zéro 
   }    
   else if(command == "Gauche")//si la commande reçue est Gauche
   {
      Serial.println(valeurACC); //envoie les valeurs de l'accéléromètre
     
      analogWrite(enableM2, (myVitesse + 150));//ajuste la vitesse des moteurs avec la direction voulue
      analogWrite(enableM4, (myVitesse + 150));
      analogWrite(enableM1, myVitesse);
      analogWrite(enableM3, myVitesse);
      command ="";//remet la commande à zéro 
   }      
   else if(command == "Droite")//si la commande reçue est Droite
   {
      Serial.println(valeurACC); //envoie les valeurs de l'accéléromètre

      analogWrite(enableM1, (myVitesse + 150));//ajuste la vitesse des moteurs avec la direction voulue
      analogWrite(enableM3, (myVitesse + 150));
      analogWrite(enableM2, myVitesse);
      analogWrite(enableM4, myVitesse);
      command ="";//remet la commande à zéro 
   }     

  command ="";//remet la commande à zéro 
  valeurACC = ""; //remet les valeurs de l'accéléromètre à zéro pour ne pas renvoyer les mêmes données
  delay(100);
}
