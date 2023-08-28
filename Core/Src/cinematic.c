/*
 * cinematic.c
 *
 *  Created on: 4 may. 2023
 *      Author: MQuero.
 */

#include <math.h>
#include "motor.h"
#include "cinematic.h"
#include "robotparameters.h"

void moveRobot(float vel, float theta, int w){

	float x,y, v1, v2, v3;
	int32_t w1,w2,w3;
	/*
	 * vel --> m/s
	 * theta --> rad
	 * w --> direction
	 *
	 * x and y have the proporcional directional influent of the movement of the robot.
	 * Contains values between 0 and 1.
	 *
	 * w1,w2,w3 are the angular velocities of each wheel in rpm
	 */


	//Calculate the Vx and Vy in m/s
	x = vel * cos(theta);
	y = vel * sin(theta);

	if(x < 0.05 && x > -0.05) x = 0;
	if(y < 0.05 && y > -0.05) y = 0;

	//Calculate the influent in the velocity of each motor
	v1 = 0.58*x -0.33*y +0.33*w;
	v2 = -0.58*x -0.33*y +0.33*w;
	v3 = 0*x +0.67*y +0.33*w;

	//Transform vel in m/s to rad/s w = v/radius
	v1 = v1 / WHEELRADIUS;
	v2 = v2 / WHEELRADIUS;
	v3 = v3 / WHEELRADIUS;

	/*
	 * Transform rad/s to rpm
	 * pi rad --- 180 grades
	 * 1 min --- 60 sec
	 *
	 * vel [rad/s] * 180/pi * 60/1
	 */
	w1 = v1 * 30/M_PI;
	w2 = v2 * 30/M_PI;
	w3 = v3 * 30/M_PI;


	velMotor(&motorUno, w1);
	velMotor(&motorDos, w2);
	velMotor(&motorTres, w3);
}
