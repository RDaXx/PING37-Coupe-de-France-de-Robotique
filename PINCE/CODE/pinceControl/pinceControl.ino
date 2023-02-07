
#include <Stepper.h>
#include <Servo.h>

Servo myservo1;  // création de l'objet myservo (pilote le doigt droit)
Servo myservo2;  //(pilote le doigt gauche)


// Définir le nombre de pas par tour
int NbrPas = 200; //à modifier en fonction de la hauteur souhaité : 200 plus haut que NbrPas = 150, etc
int NbrTour;
int VInit = 100; //Vitesse de rotation initiale du moteur pas a pas
int VFin = 200;  //Vitesse de rotation finale du moteur pas a pas
int V = VInit;
int pin_servo1 = 12;    // Doigt Droit  (par rapport au centre du robot)Pin 12 sur lequel est branché le servo sur l'Arduino
int pin_servo2 = 13;    // Doigt Gauche (par rapport au centre du robot)Pin 13 sur lequel est branché le servo sur l'Arduino
int x;

int angle_initial = 0;   //angle initial
int angle_final = 70;   //angle final
int increment = 2;       //incrément entre chaque position
bool angle_actuel = false;//Envoi sur le port série la position courante du servomoteur
bool etat = true; //permet la securite. Ex : Pince ouverte donc on ne peut pas lui redemander de s'ouvrir (sinon dérèglement de l'angle des servo par rapport à l'axe du doigt)
int test;
int pos1 = angle_initial;
int pos2 = 105; //physiquement les 2 servo sont décalé par rapport aux domaines de libertés : l'angle 0 du servo 1 est décalé de 5° par rapport à l'axe d'ouverture
                //en mettant 100, la pince se ferme sur l'objet mais si on rajoute 5° alors on rajoutera un couple suffisant pour porter 1/2/3 palet de 100g chacuns

Stepper MonMoteur(NbrPas, 8, 9, 10, 11);

void setup() {
  // Vitesse à 200tr/min (VFin)
  MonMoteur.setSpeed(V);
 
  Serial.begin(9600);
  while(!Serial){;}
  myservo1.attach(pin_servo1);  // attache le servo au pin spécifié sur l'objet myservo
  myservo2.attach(pin_servo2);

  for (pos1 = angle_initial ; pos1 <= angle_final;) { // Déplace le servo de 0 à 180 degréespar pas de 1 degrée 
    pos1 = pos1+1;
    myservo1.write(pos1); // Demande au servo de se déplacer à cette position angulaire
    pos2 = pos2-1;
    myservo2.write(pos2);
    delay(30);                       // Attend 30ms entre chaque changement de position
    }
}

void loop() {
 
  test = Serial.read(); //lis ce qui a été écrit en commande
  Serial.println(test); //attribu ce qui a été lu à "test" (Attention test est un entier)
  
  
  if (test==49){ //si on tape '1' (en ASCII '49')
  for(NbrTour=0;NbrTour<=10;NbrTour++){ //diminution du nombre de tour
    MonMoteur.setSpeed(V);
    if (V <= VFin){
      V=V+25;
    }
    Serial.println("Sens 1");
    MonMoteur.step(NbrPas);
    test = 0; //Réinitialisation de test
  }}
  V = VInit;

  
  if(test==50){ //si on tape '2' (en ASCII '50')
  for(NbrTour=10;NbrTour>=0;NbrTour--){ 
    MonMoteur.setSpeed(V);
    if (V <= VFin){
      V=V+25;
    }
    Serial.println("Sens 2");
    MonMoteur.step(-NbrPas);
    test = 0; //Réinitialisation de test
  }}
  V = VInit;

  int Nb_test = 0;

   
  if (test==51 && etat == true){ //si on tape '3' (en ASCII '51') La pince se ferme (si cas inverse, les pin 12 et 13 ont été inversés)
    etat = false;
    x = angle_initial;
    while( x <= angle_final){
      x = x+1;
      pos1 = pos1-1;
    myservo1.write(pos1); // Demande au servo de se déplacer à cette position angulaire
    pos2 = pos2+1;
    myservo2.write(pos2);
    delay(30);
    }
 }


  if (test==52 && etat == false){ //si on tape '4' (en ASCII '52') La pince s'ouvre
    etat = true;
    x = angle_final;
    while( x >= angle_initial){
      x = x-1;
      pos1 = pos1+1;
    myservo1.write(pos1); // Demande au servo de se déplacer à cette position angulaire
    pos2 = pos2-1;
    myservo2.write(pos2);
    delay(30);
    }
  }
}//fin de void loop
