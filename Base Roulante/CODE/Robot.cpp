#include "Robot.h"
#include "Motor.h"
#include "RobotPin.h"



Robot::Robot(Motor m1, Motor m2, Motor m3){
  motor[0] = m1;
  motor[1] = m2;
  motor[2] = m3;
}


void Robot::Motion_Control(Direction direction)
{
  switch(direction)
  {
    case STOP:
                  Stop();break;
    case FORWARD:
                  Forward(100);break;
    case BACK:
                  Back(100);break;
    case LEFT:
                  Left(100);break;
    case RIGHT:
                  Right(100);break;
    default:      
                  Stop();break;
  }
}

void Robot::Stop()
{
  set_robot_speeds(0,0,0);
  statut_direction = Direction(STOP);
}

void Robot::Forward(float speed)
{
  set_robot_speeds(0,-speed,0);
  statut_direction = Direction(FORWARD);
}

void Robot::Back(float speed)
{
  set_robot_speeds(0,speed,0);
  statut_direction = Direction(BACK);
}

void Robot::Left(float speed)
{
  set_robot_speeds(-speed,0,0);
  statut_direction = Direction(LEFT);
}

void Robot::Right(float speed)
{
  set_robot_speeds(speed,0,0);
  statut_direction = Direction(RIGHT);
}

void Robot::Rotate_Right(float speed)
{
  set_robot_speeds(0,0,-speed);
  statut_direction = Direction(ROTATE_RIGHT);
}

void Robot::Rotate_Left(float speed)
{
  set_robot_speeds(0,0,speed);
  statut_direction = Direction(ROTATE_LEFT);
}

void Robot::go_to_y_position(double y, float speed) {

  if(previous_pos_y - y > 0){
    direction_request = Direction(BACK);
  }

  else if(previous_pos_y - y < 0){
    direction_request = Direction(FORWARD);
  }

  else if(previous_pos_y == y) {
   direction_request = Direction(STOP);    
  }

  if((y - pos_y) > 0 && direction_request == Direction(FORWARD)){
    Forward(speed);
  }

  else if((y - pos_y) < 0 && direction_request == Direction(BACK)){
    Back(speed);
  }

  else{
    Stop();
  }  
}

void Robot::go_to_x_position(double x, float speed) {

  if(previous_pos_x - x > 0){
    direction_request = Direction(LEFT);
  }

  else if(previous_pos_x - x < 0){
    direction_request = Direction(RIGHT);
  }

  else if(previous_pos_x == x) {
   direction_request = Direction(STOP);    
  }

  if((x - pos_x) > 0 && direction_request == Direction(RIGHT)){
    Right(speed);
  }

  else if((x - pos_x) < 0 && direction_request == Direction(LEFT)){
    Left(speed);
  }

  else{
    Stop();
  } 
}

void Robot::turn_to_z_position(int z_angle , float speed) {

  if((orientation_z - z_angle) < 0){
    Rotate_Left(speed);
  }

  else if((orientation_z - z_angle) > 0){
    Rotate_Right(speed);
  }

  else{
    Stop();
  }  
}

void Robot::set_robot_speeds(float x_speed, float y_speed, float z_speed){

  motor[0].setpoint = -0.33*x_speed + 0.58*y_speed + 0.33*z_speed;
  motor[1].setpoint = -0.33*x_speed - 0.58*y_speed + 0.33*z_speed;
  motor[2].setpoint = 0.63*x_speed + 0*y_speed + 0.33*z_speed;
}

void Robot::update_pos(){

  switch(statut_direction){

    case Direction(FORWARD):
    //Forward 1m = -13200 motor 0
      
      pos_y += -(double)motor[0].encoder_pos/13200;
      motor[0].encoder_pos = 0;

    break;

    case Direction(BACK):
      
      pos_y += (double)motor[0].encoder_pos/13200;
      motor[0].encoder_pos = 0;
    break;

    case Direction(LEFT):
      pos_x += (double)motor[2].encoder_pos/15100;
      motor[2].encoder_pos = 0;
    break;

    case Direction(RIGHT):
      pos_x += -(double)motor[2].encoder_pos/15100;
      motor[2].encoder_pos = 0;
    break;

    case Direction(ROTATE_LEFT):
    break;

    case Direction(ROTATE_RIGHT):
    break;

    case Direction(STOP):
      pos_y = pos_y;
      pos_x = pos_x;
    break;

  }

}

