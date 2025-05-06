// Practice1: finish SpikyPlatform
class SpikyPlatform extends Platform {
  int damage = 1;
  boolean isCollided=false;

  SpikyPlatform(float tempX, float tempY) {
    super(tempX, tempY);
  }

  void interact(Player player) {
    player.ySpeed = 0;
    player.y = y - player.h + player.feetOffset;
    player.y -= speed;

    if (player.damaged==false && isCollided==false) {
      player.health-=1;
      player.damaged=true;
      player.damageTimer=DAMAGE_BLINK_DURATION;
      isCollided = true;
    }
  }

  void display() {
    image(spikyPlatformImage, x, y, w, h);
  }
}
