#ifndef _MOTOR_H
#define _MOTOR_H

#include "Motor.h"

class Motor
{
  private:
          void Pin_init_motor();

  public:
          //Classe moteur par défaut
          Motor(){
            pwm_pin = 0;
            direction_pin = 0;
            encoder_a_pin = 0;
            encoder_b_pin = 0;
          }
          
          Motor(int pwm, int direction, int encoder_a, int encoder_b);

          double setpoint = 0;
          double PID_input, PID_output;

          void Stop();
          void Forward(int speed);
          void Back(int speed);
          void Left(int speed);
          void Right(int speed);       
          void setMotorSpeed(float speed);
  public:
          int pwm_pin;
          int direction_pin;
          int encoder_a_pin;
          int encoder_b_pin;
          volatile int encoder_count = 0;
          volatile int encoder_pos = 0;
          volatile int encoder_count_backup = 0;         
          volatile double encoderSpeed = 0;

          double motorSpeed;

  
  };

#endif
