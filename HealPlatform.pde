// Practice3: finish HealPlatform
class HealPlatform extends Platform {

  float potionW = 20, potionH = 20;
  int healingAmount;
  boolean isTaken = false;

  HealPlatform(float tempX, float tempY) {
    super(tempX, tempY);
  }

  void interact(Player player) {
    player.ySpeed = 0;
    player.y = y - player.h + player.feetOffset;
    player.y -= speed;

    if (!isTaken) {
      isTaken = true;
      player.health+=1;
    }
  }

  void display() {
    float potionY = y-potionH-5-10*sin(TWO_PI*(frameCount/60.0));
    image(platformImage, x, y, w, h);
    if (!isTaken) {
      image(healPotionImage, x + (w / 2) - (potionW/2), potionY, 20, 20);
    }
  }
}
