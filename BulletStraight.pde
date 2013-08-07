class BulletStraight extends Bullet
{
  PVector vel, loc;
  int bulletSize;
  float speed;

  BulletStraight(PVector vel, PVector loc, int bulletSize, float speed)
  {
    super(vel, loc, bulletSize, speed);
  }

  void show()
  {
    fill(0, 255, 0);
    super.show();
  }

  void run()
  {
    super.run();
  }
}

