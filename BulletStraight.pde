class BulletStraight extends Bullet
{
  PVector vel, loc;
  int bulletSize, damage;
  float speed;

  BulletStraight(PVector vel, PVector loc, int bulletSize, int damage, float speed, boolean madeByPlayer)
  {
    super(vel, loc, bulletSize, damage, speed, madeByPlayer);
  }

  void show()
  {
    if (madeByPlayer)
      fill(0, 255, 0);
    else
      fill(255, 0, 0);
    super.show();
  }

  void run()
  {
    super.run();
  }
}

