#include <LiquidCrystal_I2C.h>
LiquidCrystal_I2C lcd(0x27, 20, 4); //i2c-адрес, кол-во символов, кол-во строк
void setup()
{
  lcd.init();
  lcd.backlight();
}
void loop()
{
  /*
  for (char x = 33; x <= 125; x++)
  {
    lcd.print(x); //вывод переменной на дисплей
    delay(250);

    if (x == 125)
      lcd.clear(); //очистка дисплея
  }
  */
   lcd.setCursor(3,0);
  lcd.print("j m  tnbcvv nbvcgtfcthsytu56tgiyty645t534e3457");
}
