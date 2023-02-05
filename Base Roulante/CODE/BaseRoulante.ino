#include "Motor.h"
#include "Robot.h"
#include "RobotPin.h"
#include <FlexiTimer2.h>
#include <PID_v1.h>

//Forward 1m = -13200 motor 0
//Back 1m = 13200 motor 0
//Right 1m = 15100 motor 2
//Left 1m = -15100 motor 2
//Rotate left 360° = -11900 motor 2
//Rotate left 360° = 11900 motor 2


#define CADENCE_MS 100
volatile double dt = CADENCE_MS/1000.;
volatile double temps = -CADENCE_MS/1000.;

#define TSDATA 100
unsigned long tempsDernierEnvoi = 0;
unsigned long tempsCourant = 0;
unsigned long print_time=0;
int compteur = 0;

double kp = 0.4; // gain proportionnel
double ki = 1.6; // gain intégral
double kd = 0; // gain dérivé

Motor Motor1(PWM_M1, DIR_M1, ENCODER_M1_A, ENCODER_M1_B);
Motor Motor2(PWM_M2, DIR_M2, ENCODER_M2_A, ENCODER_M2_B);
Motor Motor3(PWM_M3, DIR_M3, ENCODER_M3_A, ENCODER_M3_B);

Robot Robot(Motor1, Motor2, Motor3);

PID PID_M1(&Robot.motor[0].PID_input, &Robot.motor[0].PID_output, &Robot.motor[0].setpoint, Robot.kp_M1, Robot.ki_M1, Robot.kd_M1, DIRECT);
PID PID_M2(&Robot.motor[1].PID_input, &Robot.motor[1].PID_output, &Robot.motor[1].setpoint, Robot.kp_M2, Robot.ki_M2, Robot.kd_M2, DIRECT);
PID PID_M3(&Robot.motor[2].PID_input, &Robot.motor[2].PID_output, &Robot.motor[2].setpoint, Robot.kp_M3, Robot.ki_M3, Robot.kd_M3, DIRECT);

PID PID_Motor[3] = {PID_M1, PID_M2, PID_M3};




void setup() {

  attachInterrupt(digitalPinToInterrupt(ENCODER_M1_A), EncoderCountM1, CHANGE);
  attachInterrupt(digitalPinToInterrupt(ENCODER_M2_A), EncoderCountM2, CHANGE);
  attachInterrupt(digitalPinToInterrupt(ENCODER_M3_A), EncoderCountM3, CHANGE);

  
  for(int i=0; i<3; i++){
    PID_Motor[i].SetMode(AUTOMATIC);
    PID_Motor[i].SetSampleTime(100);
    PID_Motor[i].SetOutputLimits(-120, 120);

  }
  

  FlexiTimer2::set(CADENCE_MS, 1/1000., GetEncodersSpeed);
  FlexiTimer2::start();

  Serial.begin(9600);
  delay(2000);
  
}

void loop() {

  /*
   if(Robot.motor[2].encoder_count_backup < 2975 ){
      Robot.Rotate_Right(60);
   }
   else {
     Robot.Stop();
   }
*/
  Robot.go_to_x_position(-0.5, 60);
  Serial.println(Robot.pos_x, 4);

   
  
   
  
  
  /*
  
  if(Serial.available()){
      char val = Serial.read();
      if(val != -1)
      {
        switch(val)
        {
        case 'w'://Move Forward
          Robot.motor[2].setpoint = -80;
          
          break;

        case 'x':
          Robot.motor[2].setpoint = 0;
          break;
        }
    }
  }
  */
  
  for(int i=0; i<3; i++){
    Robot.motor[i].PID_input = Robot.motor[i].encoderSpeed;
    PID_Motor[i].Compute();
    Robot.motor[i].setMotorSpeed(Robot.motor[i].PID_output);
  }
  //ecritureData();
  //Serial.println(Robot.motor[2].encoder_count_backup);
  
}


void EncoderCountM1()  {
  int a = digitalRead(Robot.motor[0].encoder_a_pin);
  int b = digitalRead(Robot.motor[0].encoder_b_pin);

  if (b == LOW && a == HIGH)  {Robot.motor[0].encoder_count --;  Robot.motor[0].encoder_count_backup --; Robot.motor[0].encoder_pos --;}
  else if (b == LOW && a == LOW)  {Robot.motor[0].encoder_count ++;  Robot.motor[0].encoder_count_backup ++;Robot.motor[0].encoder_pos ++;}
  else if (b == HIGH && a == HIGH)  {Robot.motor[0].encoder_count ++;  Robot.motor[0].encoder_count_backup ++;Robot.motor[0].encoder_pos ++;}
  else if (b == HIGH && a == LOW)  {Robot.motor[0].encoder_count --;  Robot.motor[0].encoder_count_backup --;Robot.motor[0].encoder_pos --;}
    
  } 
  

void EncoderCountM2()  {
  int a = digitalRead(Robot.motor[1].encoder_a_pin);
  int b = digitalRead(Robot.motor[1].encoder_b_pin);

  if (b == LOW && a == HIGH)  {Robot.motor[1].encoder_count --;  Robot.motor[1].encoder_count_backup --;Robot.motor[1].encoder_pos --;}
  else if (b == LOW && a == LOW)  {Robot.motor[1].encoder_count ++;  Robot.motor[1].encoder_count_backup ++;Robot.motor[1].encoder_pos ++;}
  else if (b == HIGH && a == HIGH)  {Robot.motor[1].encoder_count ++;  Robot.motor[1].encoder_count_backup ++;Robot.motor[1].encoder_pos ++;}
  else if (b == HIGH && a == LOW)  {Robot.motor[1].encoder_count --;  Robot.motor[1].encoder_count_backup --;Robot.motor[1].encoder_pos --;}
}

void EncoderCountM3() {
  int a = digitalRead(Robot.motor[2].encoder_a_pin);
  int b = digitalRead(Robot.motor[2].encoder_b_pin);

  if (b == LOW && a == HIGH)  {Robot.motor[2].encoder_count --;  Robot.motor[2].encoder_count_backup --;Robot.motor[2].encoder_pos --;}
  else if (b == LOW && a == LOW)  {Robot.motor[2].encoder_count ++;  Robot.motor[2].encoder_count_backup ++;Robot.motor[2].encoder_pos --;}
  else if (b == HIGH && a == HIGH)  {Robot.motor[2].encoder_count ++;  Robot.motor[2].encoder_count_backup ++;Robot.motor[2].encoder_pos --;}
  else if (b == HIGH && a == LOW)  {Robot.motor[2].encoder_count --;  Robot.motor[2].encoder_count_backup --;Robot.motor[2].encoder_pos --;}
}


void GetEncodersSpeed()
{ 
  int i;
  for(i = 0; i < 3; i++){
    double encoderPulses = Robot.motor[i].encoder_count;
    Robot.motor[i].encoder_count = 0; // remet le compteur à zéro pour le prochain calcul
    Robot.motor[i].encoderSpeed = (encoderPulses / 2880)/dt * 60;
  }
  
  Robot.update_pos();

  
}

void ecritureData(void) {

  // Ecriture des données en sortie tous les TSDATA millisecondes
  tempsCourant = millis();
  if (tempsCourant-tempsDernierEnvoi > TSDATA) {
    
    Serial.print(temps);
    
    
    Serial.print(",");
    Serial.print(Robot.motor[0].encoderSpeed);
    Serial.print("\r");
    Serial.print("\n");
    //Serial.print(80);
    Serial.print(Robot.motor[0].setpoint);
  
  /*
    for(int i=0; i<3;i++){
      Serial.print("Encoder ");
      Serial.print(Robot.motor[i].encoder_count_backup);
      Serial.print(",");
    }
    Serial.println();
    */
    
  
    tempsDernierEnvoi = tempsCourant;
  }
}




