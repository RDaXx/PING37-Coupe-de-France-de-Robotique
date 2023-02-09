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

  request_pos_y = y;

  if((previous_pos_y - y) > 0 && pos_reached){
    Back(speed);
    pos_reached = false;
  }

  else if((previous_pos_y - y) < 0 && pos_reached){
    Forward(speed);
    pos_reached = false;
  }

  else if(previous_pos_y == y){
    pos_reached = true;
  }
}

void Robot::go_to_x_position(double x, float speed) {

  request_pos_x = x;

  if((previous_pos_x - x) > 0 && pos_reached){
    Left(speed);
    pos_reached = false;
  }

  else if((previous_pos_x - x) < 0 && pos_reached){
    Right(speed);
    pos_reached = false;
  }

  else if(previous_pos_x == x){
    pos_reached = true;
  }
}

void Robot::turn_to_z_position(int z_angle , float speed) {

  request_orientation_z = z_angle;

  if((previous_orientation_z - z_angle) > 0 && pos_reached){
    Rotate_Left(speed);
    pos_reached = false;
  }

  else if((previous_orientation_z - z_angle) < 0 && pos_reached){
    Rotate_Right(speed);
    pos_reached = false;
  }

  else if(previous_orientation_z == z_angle){
    pos_reached = true;
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

      pos_y -= (double)motor[0].encoder_pos/TICK_NMB_1M_FRWD_BCK;
      motor[0].encoder_pos = 0;
    break;

    case Direction(BACK):
      
      pos_y -= (double)motor[0].encoder_pos/TICK_NMB_1M_FRWD_BCK;
      motor[0].encoder_pos = 0;
    break;

    case Direction(LEFT):
      pos_x -= -(double)motor[2].encoder_pos/TICK_NMB_1M_RGHT_LFT;
      motor[2].encoder_pos = 0;
    break;

    case Direction(RIGHT):
      pos_x -= (double)motor[2].encoder_pos/TICK_NMB_1M_RGHT_LFT;
      motor[2].encoder_pos = 0;
    break;

    case Direction(ROTATE_LEFT):
      orientation_z -= -(double)motor[2].encoder_pos/TICK_NMB_360_RRGHT_RLFT;
      motor[2].encoder_pos = 0;
    break;

    case Direction(ROTATE_RIGHT):
      orientation_z -= (double)motor[2].encoder_pos/TICK_NMB_360_RRGHT_RLFT;
      Serial.println(orientation_z);
      motor[2].encoder_pos = 0;
    break;
  }

  if(!pos_reached){

    //Check Y position    
    if((pos_y - request_pos_y >= 0 && statut_direction == Direction(FORWARD)) ||  (pos_y - request_pos_y <= 0 && statut_direction == Direction(BACK))){
      Stop();
      pos_y = request_pos_y;
      previous_pos_y = request_pos_y;
      pos_reached = true;
    }

    //Check X position
    if((pos_x - request_pos_x >= 0 && statut_direction == Direction(RIGHT)) || (pos_x - request_pos_x <= 0 && statut_direction == Direction(LEFT))){
      Stop();
      pos_x = request_pos_x;
      previous_pos_x = request_pos_x;
      pos_reached = true;
    }

    //Check Z position
    if((orientation_z - request_orientation_z >= 0 && statut_direction == Direction(ROTATE_RIGHT))  ||  (pos_x - request_pos_x <= 0 && statut_direction == Direction(ROTATE_LEFT))){
      Stop();
      orientation_z = request_orientation_z;
      previous_orientation_z = request_orientation_z;
      pos_reached = true;
    }
  }

}

