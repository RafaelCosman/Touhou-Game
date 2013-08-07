abstract class Bullet
{
  PVector vel, loc;
  int bulletSize, damage;
  float speed;
  boolean madeByPlayer;

  Bullet(PVector vel, PVector loc, int bulletSize, int damage, float speed, boolean madeByPlayer)
  {
    this.vel = vel;
    this.loc = loc;
    this.bulletSize = bulletSize;
    this.damage = damage;
    this.speed = speed;
    this.madeByPlayer = madeByPlayer;
  }

  void show()
  {
    ellipse(loc.x, loc.y, bulletSize, bulletSize);
  }

  void run()
  {
    for (Enemy e : enemies)
    {
      if (madeByPlayer && loc.dist(e.loc) <= bulletSize / 2 + (e.enemySize / 2))
      {
        e.hp -= damage;
      }
    }
    vel.limit(speed);
    loc.add(vel);
  }
}

