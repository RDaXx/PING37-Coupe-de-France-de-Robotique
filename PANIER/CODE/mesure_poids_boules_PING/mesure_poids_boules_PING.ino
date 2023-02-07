#include <DFRobot_HX711.h>
#include <SoftwareSerial.h>

SoftwareSerial Serial7Segment(7, 8); //RX pin, TX pin
DFRobot_HX711 MyScale(A2, A3);
float poids = 0; //poids mesuré
int nbBille = 0; //nombre de billes

// fonction pour initialiser le capteur 
void setup() 
{
  Serial.begin(9600)
  
  // Etalonnage du capteur de charge; réglage du offset à 0
  MyScale.setCalibration(1992);
  Serial.println("Affiche variable");
  Serial7Segment.begin(9600); //Réglage de la vitesse de transmission de l'affichage à 7 segments sur 9600
  delay(500);
  Serial7Segment.write('v'); //Reinitialisation de l'afficheur 7 segments
}
void loop() 
{
  // Mesure du poids et affichage du nombre de billes sur l'afficheur
  poids = MyScale.readWeight(); //variable du poids des billes
  nbBille = conv(poids);
  Serial.print(MyScale.readWeight(), 1); //lecture du nombre de bille 2 chiffres après la virgule
  Serial.println(" g");
  Serial.print(nbBille); //le nombre de bille sur le Serial moniteur
  Serial.println(" Billes");

  //Affichage sur le 7-segment
  char tempString[10]; // créer un tableau de caractères afin de stocker la chaine qui sera renvoyer à l'afficheur
  sprintf(tempString, "%4d", nbBille); //Utilisation de sprintf pour Convertir le nombre de bille en une chaine de caractères.
  Serial7Segment.print(tempString); // cette fonction permet d'envoyer la chaine à l'afficheur 7 segments
  delay(1000); //un temps de 2 secondes avant de reboucler
}
  int conv(float param) 
{
  // La fonction conv() est utilisé pour convertir le poids mesuré en un nombre entier de billes
  int bille;
  bille = (param)/1.7;
  return bille;
}

//void tare(){
  //MyScale.tare(nbBille);
  //nbBille = 0;
//}
// Fonction tare qui réinitialise le compteur
//if (Serial.available() > 0){
  //char c = Serial.read();
 // if (c == 'T') {
   // tare();
  //}
  
//}

