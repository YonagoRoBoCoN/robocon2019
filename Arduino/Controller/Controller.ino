//Morita Daiki 2019 @NIT.yonago
//マイコン:arduino pro mini 互換（自作）
#include <WiiChuck.h>

//つないだアクセサリーの名前をWiiとする
Accessory Wii;

//設定
void setup()
{
  Serial.begin(115200);    //シリアルボートレート
  pinMode(A2, OUTPUT);     //GNDを出力ピンで代用の時
  pinMode(A3, OUTPUT);     //+5Vを出力ピンで代用の時
  digitalWrite(A2, LOW);   //GNDを出力ピンで代用の時
  digitalWrite(A3, LOW);   //電源をLOWにしてコントローラ初期化
  delay(100);              //ちょい待つ
  digitalWrite(A3, HIGH);  //+5V出力
  delay(100);              //ちょい待つ
  Wii.begin();             //コントローラ接続
  if (Wii.type == Unknown) //Wiiの種類が分からないとき
    Wii.type = WIICLASSIC; //クラシックコントローラーだよ
}
void loop()
{
  //長さWII_VALUES_ARRAY_SIZE(=19)のwii_dataという配列を用意
  uint8_t wii_data[WII_VALUES_ARRAY_SIZE];

  Wii.readData();

  //配列の各要素に値を代入
  wii_data[0] = Wii.getButtonA();
  wii_data[1] = Wii.getButtonX();
  wii_data[2] = Wii.getButtonY();
  wii_data[3] = Wii.getButtonB();
  wii_data[4] = Wii.getPlusButton();
  wii_data[5] = Wii.getButtonHome();
  wii_data[6] = Wii.getButtonMinus();
  wii_data[7] = Wii.getPadRight();
  wii_data[8] = Wii.getPadUp();
  wii_data[9] = Wii.getPadLeft();
  wii_data[10] = Wii.getPadDown();
  wii_data[11] = Wii.getTriggerLeft();
  wii_data[12] = Wii.getButtonZLeft() > 0;
  wii_data[13] = Wii.getTriggerRight();
  wii_data[14] = Wii.getButtonZRight() > 0;
  wii_data[15] = Wii.getJoyXLeft();
  wii_data[16] = Wii.getJoyYLeft();
  wii_data[17] = Wii.getJoyXRight();
  wii_data[18] = Wii.getJoyYRight();

  Serial.write(0xff);         //ヘッダ＝11111111
  Serial.write(wii_data, 19); //19個のデータ送信
  delay(5);                   //５ｍｓ待つ
}
