abstract class Enemy
{
  PVector vel, loc;
  int enemySize, hp, shootTimeCurrent, shootTimeDeadline;
  float speed;

  Enemy(PVector vel, PVector loc, int enemySize, int hp, int shootTimeCurrent, int shootTimeDeadline, float speed)
  {
    this.vel = vel;
    this.loc = loc;
    this.enemySize = enemySize;
    this.hp = hp;
    this.shootTimeCurrent = shootTimeCurrent;
    this.shootTimeDeadline = shootTimeDeadline;
    this.speed = speed;
  }

  void show()
  {
    ellipse(loc.x, loc.y, enemySize, enemySize);
  }

  void run()
  {
    vel.limit(speed);
    loc.add(vel);
    if (millis() - shootTimeCurrent >= shootTimeDeadline)
    {
      if (facingRight)
        bullets.add(new BulletStraight(new PVector(99, 0), new PVector(p.loc.x, p.loc.y), 5, 1, 10.0, true));
      else
        bullets.add(new BulletStraight(new PVector(-99, 0), new PVector(p.loc.x, p.loc.y), 5, 1, 10.0, true));
      shootTimeCurrent = millis();
    }
  }
}

