#include "Motor.h"
#include "Robot.h"
#include "RobotPin.h"
#include <FlexiTimer2.h>
#include <PID_v1.h>

/*******TIMER INTERRUPTION GetEncodersSpeed*******/
#define CADENCE_MS 100
volatile double dt = CADENCE_MS/1000.;
volatile double temps = -CADENCE_MS/1000.;

/*******TIMER AFFICHAGE DONNEE*******/
#define TSDATA 100
unsigned long tempsDernierEnvoi = 0;
unsigned long tempsCourant = 0;
unsigned long print_time=0;
int compteur = 0;

/*******DECLARATIONS MOTEURS*******/
Motor Motor1(PWM_M1, DIR_M1, ENCODER_M1_A, ENCODER_M1_B);
Motor Motor2(PWM_M2, DIR_M2, ENCODER_M2_A, ENCODER_M2_B);
Motor Motor3(PWM_M3, DIR_M3, ENCODER_M3_A, ENCODER_M3_B);

Robot Robot(Motor1, Motor2, Motor3);

/*******DECLARATIONS PID*******/
PID PID_M1(&Robot.motor[0].PID_input, &Robot.motor[0].PID_output, &Robot.motor[0].setpoint, Robot.kp_M1, Robot.ki_M1, Robot.kd_M1, DIRECT);
PID PID_M2(&Robot.motor[1].PID_input, &Robot.motor[1].PID_output, &Robot.motor[1].setpoint, Robot.kp_M2, Robot.ki_M2, Robot.kd_M2, DIRECT);
PID PID_M3(&Robot.motor[2].PID_input, &Robot.motor[2].PID_output, &Robot.motor[2].setpoint, Robot.kp_M3, Robot.ki_M3, Robot.kd_M3, DIRECT);

PID PID_Motor[3] = {PID_M1, PID_M2, PID_M3};

/**************MAIN***************/
void setup() {

  Serial.begin(9600);
  
  //Déclaration des interruptions pour les encodeurs à chaque front (montant/descendant)
  attachInterrupt(digitalPinToInterrupt(ENCODER_M1_A), EncoderCountM1, CHANGE);
  attachInterrupt(digitalPinToInterrupt(ENCODER_M2_A), EncoderCountM2, CHANGE);
  attachInterrupt(digitalPinToInterrupt(ENCODER_M3_A), EncoderCountM3, CHANGE);

  //Configuration du PID pour les trois moteurs
  for(int i=0; i<3; i++){
    PID_Motor[i].SetMode(AUTOMATIC);
    PID_Motor[i].SetSampleTime(100);
    PID_Motor[i].SetOutputLimits(-120, 120);
  }
  
  //Interruption pour récupérer la vitesse des encodeurs + mise à jour position du robot
  FlexiTimer2::set(CADENCE_MS, 1/1000., GetEncodersSpeed);
  FlexiTimer2::start();

  //Init communication avec Raspberry via communication série
  com_init();

}

void loop() {
 
 /******Réception et execution des fonctions de déplacement*****/
  if (Serial.available() > 0) {
    String command = Serial.readStringUntil('\n');
    int startIndex = command.indexOf("(");
    int endIndex = command.indexOf(")");

    if (startIndex != -1 && endIndex != -1) {
      String function = command.substring(0, startIndex);
      float value = command.substring(startIndex + 1, endIndex).toFloat();

      if (function == "move_to_y_position") {
        Robot.go_to_y_position(value,60);
      }
      else if (function == "move_to_x_position") {
        Robot.go_to_x_position(value,60);
      }
      else if (function == "turn_to_z_position") {
        Robot.turn_to_z_position((int)value,60);
      }
    }
  }

  /**************************************/

  //PID
  for(int i=0; i<3; i++){
    
    if(Robot.motor[i].setpoint == 0 && Robot.motor[i].encoderSpeed < 5){  //Mise à 0 forcée d'un moteur pour éviter les variations du PID autour de 0
      Robot.motor[i].Stop();
      Robot.motor[i].encoder_count = 0;
      Robot.motor[i].encoderSpeed = 0;
    }

    //Mise à jour du PID
    else{
      Robot.motor[i].PID_input = Robot.motor[i].encoderSpeed;
      PID_Motor[i].Compute();
      Robot.motor[i].setMotorSpeed(Robot.motor[i].PID_output);
    }
  }

  ecritureData();
}


/***********FONCTIONS*************/

void EncoderCountM1() { //Mise à jour position encodeur moteur 1
  int a = digitalRead(Robot.motor[0].encoder_a_pin);
  int b = digitalRead(Robot.motor[0].encoder_b_pin);

  if (b == LOW && a == HIGH)  {Robot.motor[0].encoder_count --;  Robot.motor[0].encoder_count_backup --; Robot.motor[0].encoder_pos --;}
  else if (b == LOW && a == LOW)  {Robot.motor[0].encoder_count ++;  Robot.motor[0].encoder_count_backup ++;Robot.motor[0].encoder_pos ++;}
  else if (b == HIGH && a == HIGH)  {Robot.motor[0].encoder_count ++;  Robot.motor[0].encoder_count_backup ++;Robot.motor[0].encoder_pos ++;}
  else if (b == HIGH && a == LOW)  {Robot.motor[0].encoder_count --;  Robot.motor[0].encoder_count_backup --;Robot.motor[0].encoder_pos --;}
} 
  
void EncoderCountM2() { //Mise à jour position encodeur moteur 2
  int a = digitalRead(Robot.motor[1].encoder_a_pin);
  int b = digitalRead(Robot.motor[1].encoder_b_pin);

  if (b == LOW && a == HIGH)  {Robot.motor[1].encoder_count --;  Robot.motor[1].encoder_count_backup --;Robot.motor[1].encoder_pos --;}
  else if (b == LOW && a == LOW)  {Robot.motor[1].encoder_count ++;  Robot.motor[1].encoder_count_backup ++;Robot.motor[1].encoder_pos ++;}
  else if (b == HIGH && a == HIGH)  {Robot.motor[1].encoder_count ++;  Robot.motor[1].encoder_count_backup ++;Robot.motor[1].encoder_pos ++;}
  else if (b == HIGH && a == LOW)  {Robot.motor[1].encoder_count --;  Robot.motor[1].encoder_count_backup --;Robot.motor[1].encoder_pos --;}
}

void EncoderCountM3() { //Mise à jour position encodeur moteur 3
  int a = digitalRead(Robot.motor[2].encoder_a_pin);
  int b = digitalRead(Robot.motor[2].encoder_b_pin);

  if (b == LOW && a == HIGH)  {Robot.motor[2].encoder_count --;  Robot.motor[2].encoder_count_backup --;Robot.motor[2].encoder_pos --;}
  else if (b == LOW && a == LOW)  {Robot.motor[2].encoder_count ++;  Robot.motor[2].encoder_count_backup ++;Robot.motor[2].encoder_pos --;}
  else if (b == HIGH && a == HIGH)  {Robot.motor[2].encoder_count ++;  Robot.motor[2].encoder_count_backup ++;Robot.motor[2].encoder_pos --;}
  else if (b == HIGH && a == LOW)  {Robot.motor[2].encoder_count --;  Robot.motor[2].encoder_count_backup --;Robot.motor[2].encoder_pos --;}
}

void GetEncodersSpeed() {   //Mise à jour vitesse des moteurs
  int i;
  for(i = 0; i < 3; i++){
    double encoderPulses = Robot.motor[i].encoder_count;
    Robot.motor[i].encoder_count = 0; // remet le compteur à zéro pour le prochain calcul
    Robot.motor[i].encoderSpeed = (encoderPulses / 2880)/dt * 60;
  }
  Robot.update_pos();   //Mise à jour de la position du robot
}

void ecritureData(void) {   //La fonction permet d'afficher des données toutes les 100ms

  // Ecriture des données en sortie tous les TSDATA millisecondes
  tempsCourant = millis();
  if (tempsCourant-tempsDernierEnvoi > TSDATA) {
    
    Serial.print(temps);
    
    
    Serial.print(",");
    Serial.print(Robot.motor[1].encoderSpeed);  //Vitesse moteur 1
    Serial.print("\r");
    Serial.print("\n");
    Serial.print(Robot.motor[1].setpoint);

    tempsDernierEnvoi = tempsCourant;
  }
}



void com_init() { //Permet d'initialiser la communication Raspberry/Arduino
  String input;

  do{
    if (Serial.available() > 0){
      input = Serial.readStringUntil('\n');
    }
  }while(input != "raspberry");

  Serial.print("arduino\n");
}





