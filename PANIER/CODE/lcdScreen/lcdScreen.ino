
// --------------------utilisation du mylcd ----------------------------
#include <LiquidCrystal.h>
LiquidCrystal mylcd(12, 11, 5, 4, 3, 2);

//Utilisation de l'écran LCD

void setup()
{
  Serial.begin(9600);
  mylcd.begin(16, 2);
}

void loop()
{
  mylcd.clear();
  mylcd.setCursor(0, 0);
  mylcd.print("Hello Arielle");
  delay(500);
}
