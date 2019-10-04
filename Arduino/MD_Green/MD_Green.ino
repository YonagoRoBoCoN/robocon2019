//Morita Daiki 2019 @NIT.yonago
//2019/09/25
//Arduino Nano (old etc..)
//Black Motor Driver &インチキエアー
// #include <serial_communication_v0.h>
#include "PwmMotor.h"
#include "gyro_integral.h"
//上下，前後，つかむ
const int air_pin[3] = {A1, A2, A3};
boolean air_state[3];
int speed[3];
// uint8_t values[5];

unsigned long lasttime = 0;
int sta13 = 0;
float want_deg = 0;

PwmMotor motor[3] = {
    PwmMotor(4, 2, 3),
    PwmMotor(7, 5, 6),
    PwmMotor(A0, 8, 9),

};
gyro_integral gyro_1;

void setup()
{
    for (int i = 0; i < 3; i++)
        pinMode(air_pin[i], OUTPUT);
    pinMode(13, OUTPUT);
    Serial.begin(9600);
    gyro_1.init(500);
}

void loop()
{
    gyro_1.integral();
    Serial.print(millis());
    Serial.print(",");
    gyro_1.print_gyro_data();
    if (Serial.available() > 0)
    {
        if (Serial.read() == 0xff)
        {
            digitalWrite(13, sta13 % 2);
            sta13++;
            uint8_t mdblack_datas[4];
            Serial.readBytes(mdblack_datas, 4);
            lasttime = millis();

            int x, y, rot;
            x = mdblack_datas[0] - 31;
            y = mdblack_datas[1] - 31;
            want_deg += (mdblack_datas[2] - 15) * -0.025;
            float error_angle = want_deg - gyro_1.robot_angle;
            float rot = constrain(error_angle * 4.0, -255, 255);
            omni(x, y, rot);
            air_move(mdblack_datas[3]);
        }
    }
    if ((millis() - lasttime) > 100)
        omni(0, 0, 0);
}

void air_move(uint8_t air_cmd) //0:上下,1:前後,2:爪
{
    if ((air_cmd >> 3) & 1) //👆
        air_state[0] = true;
    else if ((air_cmd >> 4) & 1) //👇
        air_state[0] = false;

    if ((air_cmd >> 1) & 1) //前
        air_state[1] = true;
    else if ((air_cmd >> 2) & 1) //後
        air_state[1] = false;

    if (!air_state[1]) //縮めるとき開けない
        air_state[2] = false;

    if ((air_cmd >> 0) & 1) //爪開閉
    {
        if (air_state[1])                 //腕前の時だけ
            air_state[2] = !air_state[2]; //切り替え可能
    }
    for (int i = 0; i < 3; i++)
        digitalWrite(air_pin[i], air_state[i]);
}

void omni(int vx, int vy, int vrot)
{
    float vtheta = vrot * 8.0;
    float v = sqrt(vx * vx + vy * vy) * 4.0;
    float theta = atan2(vy, vx);
    float R[3] = {1.0, 1.0, 1.0};
    for (int i = 0; i < 3; i++)
        speed[i] = -v * cos(theta - PI * 2.0 / 3.0 * i) - vtheta * R[i];
    int max = 255;
    for (int i = 0; i < 3; i++)
        max = max(abs(speed[i]), max);
    for (int i = 0; i < 3; i++)
    {
        speed[i] = map(speed[i], -max, max, -255, 255);
        motor[i].speed(speed[i]);
    }
}
