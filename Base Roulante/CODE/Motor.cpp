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


void Motor::Stop()
{
  analogWrite(pwm_pin, 0);
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
