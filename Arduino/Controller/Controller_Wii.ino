//Morita Daiki 2019 @NIT.yonago
//送信基板Atmega328p?
#include <WiiChuck.h>

Accessory Wii;
void setup()
{
  Serial.begin(115200);
  pinMode(A2, OUTPUT);
  pinMode(A3, OUTPUT);
  digitalWrite(A2, LOW);
  digitalWrite(A3, LOW);
  delay(100);
  digitalWrite(A3, HIGH);
  digitalWrite(A2, LOW);
  delay(100);
  Wii.begin();
  if (Wii.type == Unknown)
    Wii.type = WIICLASSIC;
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

  Serial.write(0xff);
  Serial.write(wii_data, 19);
  delay(5);
}
