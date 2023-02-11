#include "Motor.h"
#include <Arduino.h>


Motor::Motor(int pwm, int direction, int encoder_a, int encoder_b){
  pwm_pin = pwm;
  direction_pin = direction;
  encoder_a_pin = encoder_a;
  encoder_b_pin = encoder_b;
  Pin_init_motor();
}

void Motor::Pin_init_motor()
{
  pinMode(pwm_pin, OUTPUT);
  pinMode(direction_pin, OUTPUT);
  pinMode(encoder_a_pin, INPUT);
  pinMode(encoder_b_pin, INPUT);
}


//La vitesse max des moteurs est de 120 RPM.
//Dans les fonctions suivantes, la vitesse indiquée en commande est rapportée à la valeur max d'une PWM, 255

void Motor::Stop()
{
  analogWrite(pwm_pin, 0);
  digitalWrite(direction_pin, LOW);
  motorSpeed = 0;
}

void Motor::Forward(int speed)
{
  int pwm = (abs(speed)*255)/120;
  digitalWrite(direction_pin, LOW);
  analogWrite(pwm_pin, pwm);
  motorSpeed = speed;

}

void Motor::Back(int speed)
{
  int pwm = (abs(speed)*255)/120;
  digitalWrite(direction_pin, HIGH);
  analogWrite(pwm_pin, pwm);
  motorSpeed = -speed;
}

void Motor::setMotorSpeed(float speed) {

  int pwm = (abs(speed)*255)/120;

  // Commande PWM
  if(speed > 0) {
    digitalWrite(direction_pin, LOW);
    analogWrite(pwm_pin, pwm);
    motorSpeed = speed;
  }
  if (speed < 0) {
    digitalWrite(direction_pin, HIGH);
    analogWrite(pwm_pin, pwm);
    motorSpeed = -speed;
  }

  if(speed == 0) {
    digitalWrite(direction_pin, LOW);
    analogWrite(pwm_pin, 0);
    motorSpeed = 0;
  }
}
