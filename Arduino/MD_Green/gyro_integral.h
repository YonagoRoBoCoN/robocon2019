#ifndef GYRO_INTEGRAL_H
#define GYRO_INTEGRAL_H

#include <Arduino.h>
#include <L3G.h>
#include <Wire.h>

class gyro_integral
{
private:
    float gyro_val, gyro_offset, robot_angle;
    unsigned long last_time;
    L3G gyro;

public:
    gyro_integral(void);
    void init(int setup_count);
    void integral(void);
    void print_gyro_data(void);
};

#endif