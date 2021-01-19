/*
 * Programme du ESP01 pour le projet du drone.
 * Serveur TCP qui transmet les commandes de l'application cellulaire au microcontrôleur du drone et qui renvoie à l'application 
 * les données de l'accéléromètre qui est sur le drone.
 * Par François Archambault
 * Pour Pierre Bergeron
 * Session Automne 2020
*/
//section include
#include <ESP8266WiFi.h>
#include <WiFiClient.h>


int port = 8888;  //Port number
WiFiServer server(port);//objet serveur de classe WifiServer (pour serveur TCP)

//Server connect to WiFi Network
const char *ssid = "DSO";  //Enter your wifi SSID
const char *password = "247-367-sh";  //Enter your wifi Password

int count=0;
String command; //string qui va être envoyée au client TCP (l'application) et qui va contenir les vleurs de l'accéléromètre
String dataReceive; //variable qui va accueillir les caractères qui arrivent par le port série

void setup() 
{
  Serial.begin(115200); //pour débugger et aussi pour envoyer les informations par le port série (baudrate: 115200)

  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password); //Connexion au wifi
 
  // Wait for connection  
  Serial.println("Connecting to Wifi");
  // Attente de connexion de l'ESP8266 au routeur WIFI
  while (WiFi.status() != WL_CONNECTED) 
  {
    delay(500);
    Serial.print(".");
  }
  // Indique l'adresse IP obtenue pour l'ESP8266
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  // Départ du serveur TCP
  server.begin();
  Serial.print("Open a connection to IP:");
  Serial.print(WiFi.localIP()); //affiche l'adresse IP. Utile pour la connexion avec l'apploication cellulaire
  Serial.print(" on port ");
  Serial.println(port); //8888
}

void loop() 
{
  WiFiClient client = server.available(); // Ouverture d'un socket vers le client que se connecte au serveur TCP
  
  if (client) // Le client existe?
  {
    if(client.connected()) // Le client est bien connecté?
    {       
      while(client.connected()) //tant que le client est connecté
      {     
        while(client.available()>0)  // Lecture de la requête du client (peut être dans plusieurs trames TCP)
        {
         Serial.write(client.read());// Lecture de la requête du client et l'écrit sur le port série pour le microcontrôleur
        }
        while(Serial.available()) //quand quelque chose est transféré par le port série
        {
          dataReceive = (char)Serial.read(); //caractères 1 par 1 
          if(dataReceive == "*")//si le caractère == *
          {
            client.println(command); //envoie la trame (accéléromètre) au client (TCP)
            command = ""; //remise à zéro de command
            break; //sortir du while
          }
          else //si c'Est différent d'unr étoile (*)
          {
            command = command + dataReceive; //accumule les informations de l'accéléromètre
          }
          
        }

      }
      
      client.stop(); // Fermeture du socket TCP
    }  
  }

}
