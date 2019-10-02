#include <Servo.h> //サーボ使うよ
#include "hanging_system.h"
#include <SoftwareSerial.h>

//初期位置，供給位置
const int degpA[2] = {90, 80};
const int degmA[2] = {90, 100};
const int degpB[2] = {90, 100};
const int degmB[2] = {90, 80};

//spp,spm,air,degpdef,degmdef,t1,t2,tc
hanging_system unit_A(2, 3, 11, degpA[0], degmA[0], 500, 300, 1000);
hanging_system unit_B(4, 5, 12, degpB[0], degmB[0], 500, 300, 1000);

#define SAFETYTIME 100

SoftwareSerial mdblack(A1, A0); //rx,tx

unsigned long last_time = 0;

uint8_t mdblack_datas[4];

boolean now_button_state[15];
boolean last_button_state[15];
boolean button_rize[15];
int sta13 = 0;
void setup()
{
   pinMode(13, OUTPUT);
   digitalWrite(13, HIGH);
   delay(1000);
   digitalWrite(13, LOW);
   Serial.begin(115200);
   mdblack.begin(9600);
}

void loop()
{
   if (Serial.available() > 0)
   {
      if (Serial.read() == 0xff)
      {
         digitalWrite(13, sta13 % 2);
         sta13++;
         uint8_t values[19];
         Serial.readBytes(values, 19);
         last_time = millis();

         //ボタン現状態と立ち上がり検知
         for (int i = 0; i < 15; i++)
         {
            now_button_state[i] = (values[i] > 0);                         //現在ボタン更新(>0なのは，ZやLボタンが0~16みたいな値を持つから)
            button_rize[i] = !last_button_state[i] && now_button_state[i]; //前０で今１だと立ち上がり
            last_button_state[i] = now_button_state[i];                    //今を過去に
         }

         mdblack_datas[0] = values[15];
         mdblack_datas[1] = values[16];
         mdblack_datas[2] = values[17];

         mdblack_datas[3] = (button_rize[0] << 0) |      //開閉
                            (now_button_state[7] << 1) | //出っ張る
                            (now_button_state[9] << 2) | //縮む
                            (now_button_state[8] << 3) | //↑
                            (now_button_state[10] << 4); //↓

         mdblack.listen();
         mdblack.write(0xff);
         mdblack.write(mdblack_datas, 4);
         // send_bytes(mdblack, send_datas, 5); //モーターとエアのデータ送信

         if (!now_button_state[6]) //⊖ボタン押してない（普通に供給してかっけるとき）
         {
            //右
            if (button_rize[14])                   //ZR
               unit_A.hang(0, degmA[1], degmA[0]); //奥　にかけて上がる
            else if (button_rize[13])              //R
               unit_A.hang(1, degpA[1], degpA[0]); //手前にかけて上がる

            //左
            if (button_rize[12])                   //ZL
               unit_B.hang(0, degmB[1], degmB[0]); //奥　にかけて上がる
            else if (button_rize[11])              //L
               unit_B.hang(1, degpB[1], degpB[0]); //手前にかけて上がる
         }
         else //⊖ボタン押してるとき（ただ指定したほうを上げるだけ）
         {
            //右
            if (button_rize[14])      //ZR
               unit_A.empty_hang(0);  //奥　が上がる
            else if (button_rize[13]) //R
               unit_A.empty_hang(1);  //手前が上がる

            //左
            if (button_rize[12])      //ZL
               unit_B.empty_hang(0);  //奥　が上がる
            else if (button_rize[11]) //L
               unit_B.empty_hang(1);  //手前が上がる
         }
      }
   }
   unit_A.always_run_function();
   unit_B.always_run_function();
   // delay(1);
}