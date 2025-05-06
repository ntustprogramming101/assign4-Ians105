// Practice2: finish FragilePlatform
final int FRAGILE_PLATFORM_DURATION = 50; // Duration before the platform breaks

class FragilePlatform extends Platform {
  float duration;
  boolean playedBrokenSound = false;

  FragilePlatform(float tempX, float tempY) {
    super(tempX, tempY);
    duration = FRAGILE_PLATFORM_DURATION;
  }

  void playPlatformSound() {
    if (duration <= 0) {
      fragilePlatformBrokenSound.play();
    } else {
      fragilePlatformSound.play();
    }
  }

  void interact(Player player) {
    if (duration > 0) {
      super.interact(player);
      duration -=1;
    }

    if (!playedSound) {
      playedSound=true;
      playPlatformSound();
    }
  }

  void display() {
    if (duration <= 0) {
      image(fragilePlatformBrokenImage, x, y, w, h);
      if (!playedBrokenSound) {
        playedBrokenSound=true;
        playPlatformSound();
      }
    } else {
      image(fragilePlatformImage, x, y, w, h);
    }
  }
}
