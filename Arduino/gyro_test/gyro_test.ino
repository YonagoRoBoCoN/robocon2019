#include <Wire.h>
#include <L3G.h>

L3G gyro;

void setup()
{
    Serial.begin(9600);
    Wire.begin();

    if (!gyro.init())
    {
        Serial.println("Failed to autodetect gyro type!");
        while (1)
            ;
    }

    gyro.enableDefault(); //250deg/s,190Hz DR,50Hz BW
}

void loop()
{
    gyro.read();
    Serial.print("G ");
    Serial.print(" Z: ");
    Serial.println((int)gyro.g.z);
}