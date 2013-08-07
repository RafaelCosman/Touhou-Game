abstract class Bullet
{
  PVector vel, loc;
  int bulletSize;
  float speed;

  Bullet(PVector vel, PVector loc, int bulletSize, float speed, boolean madeByPlayer)
  {
    this.vel = vel;
    this.loc = loc;
    this.bulletSize = bulletSize;
    this.speed = speed;
    this.madeByPlayer = madeByPlayer;
  }

  void show()
  {
    ellipse(loc.x, loc.y, bulletSize, bulletSize);
  }

  void run()
  {
    vel.limit(speed);
    loc.add(vel);
  }
}

