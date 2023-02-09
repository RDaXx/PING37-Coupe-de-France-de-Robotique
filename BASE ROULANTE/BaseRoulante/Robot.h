#ifndef _ROBOT_h
#define _ROBOT_h

#include "Motor.h"
#include <Arduino.h>

#define TICK_NMB_1M_FRWD_BCK 13200
#define TICK_NMB_1M_RGHT_LFT 15100
#define TICK_NMB_360_RRGHT_RLFT 11900


enum Direction
{
  FORWARD,
  BACK,
  LEFT,
  RIGHT,
  ROTATE_RIGHT,
  ROTATE_LEFT,
  STOP,
};

enum statut
{
  INIT,
  POS_REACHED,
  POS_NOT_REACHED,
};



class Robot
{
  private:
          void set_robot_speeds(float x_speed, float y_speed, float z_speed);          

  public:
          Robot(Motor m1, Motor m2, Motor m3);
          Motor motor[3];

          static void GetEncodersSpeed();
          void Encoder_init();

          void Stop();
          void Forward(float speed);
          void Back(float speed);
          void Left(float speed);
          void Right(float speed);
          void Rotate_Right(float speed);
          void Rotate_Left(float speed);

          void go_to_y_position(double y, float speed);
          void go_to_x_position(double x, float speed);
          void turn_to_z_position(int z_angle , float speed);
          void update_pos();

          void Motion_Control(Direction direction);

          /********PID setings********/
          //Motor1
          double kp_M1 = 0.4; double ki_M1 = 1.8; double kd_M1 = 0.025;
          //Motor2
          double kp_M2 = 0.4; double ki_M2 = 1.6; double kd_M2 = 0.025;
          //Motor3
          double kp_M3 = 0.4; double ki_M3 = 1.6; double kd_M3 = 0.025;

          double previous_pos_x = 0;
          volatile double pos_x = 0;
          double request_pos_x = 0;

          double previous_pos_y = 0;
          volatile double pos_y = 0;
          double request_pos_y = 0;

          int previous_orientation_z = 0;
          volatile int orientation_z = 0;
          int request_orientation_z = 0;

          int pos_reached = true;
          int statut_direction = Direction(STOP);
          int direction_request = Direction(STOP);
};

#endif
