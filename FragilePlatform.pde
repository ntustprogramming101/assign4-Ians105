// Practice2: finish FragilePlatform
final int FRAGILE_PLATFORM_DURATION = 50; // Duration before the platform breaks

class FragilePlatform extends Platform {
  float duration;

  FragilePlatform(float tempX, float tempY) {
    super(tempX, tempY);
    duration = FRAGILE_PLATFORM_DURATION;
  }

  void interact(Player player) {
    if (duration > 0) {
      player.ySpeed = 0;
      player.y = y - player.h + player.feetOffset;
      player.y -= speed;

      duration -=1;
    }
  }

  void display() {
    if (duration <= 0) {
      image(fragilePlatformBrokenImage, x, y, w, h);
    } else {
      image(fragilePlatformImage, x, y, w, h);
    }
  }
}
