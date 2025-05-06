// Practice1: finish SpikyPlatform
class SpikyPlatform extends Platform {
  int damage = 1;
  boolean isCollided=false;

  SpikyPlatform(float tempX, float tempY) {
    super(tempX, tempY);
  }
  void playPlatformSound() {
    spikyPlatformSound.play();
  }

  void interact(Player player) {
    super.interact(player);

    if (player.damaged==false && isCollided==false) {
      player.health-=1;
      player.damaged=true;
      player.damageTimer=DAMAGE_BLINK_DURATION;
      isCollided = true;
    }

    if (!playedSound) {
      playedSound=true;
      playPlatformSound();
    }
  }

  void display() {
    image(spikyPlatformImage, x, y, w, h);
  }
}
