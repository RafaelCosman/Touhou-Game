class Player
{
  PVector vel, loc;
  int playerSize, hp, shootTime;
  float speed;

  Player(PVector vel, PVector loc, int playerSize, int hp, int shootTime, float speed)
  {
    this.vel = vel;
    this.loc = loc;
    this.playerSize = playerSize;
    this.hp = hp;
    this.shootTime = shootTime;
    this.speed = speed;
  }

  void show()
  {
    fill(0, 255, 0);
    if (!facingRight)
      triangle(loc.x - playerSize, loc.y, loc.x + playerSize, loc.y + playerSize, loc.x + playerSize, loc.y - playerSize);
    else
    {
      translate(loc.x, loc.y);
      rotate(PI);
      triangle(-playerSize, 0, playerSize, playerSize, playerSize, -playerSize);
      translate(-loc.x, -loc.y);
    }
  }

  void run()
  {
    vel.set(0, 0, 0);
    if (keys[0])
      vel.x -= 99;
    if (keys[1])
      vel.x += 99;
    if (keys[2])
      vel.y -= 99;
    if (keys[3])
      vel.y += 99;
    vel.limit(speed);
    loc.add(vel);
    if (millis() - shootTime >= 70 && (mousePressed || autoFire))
    {
      if (facingRight)
        bullets.add(new BulletStraight(new PVector(99, 0), new PVector(p.loc.x, p.loc.y), 5, 1, 10.0, true));
      else
        bullets.add(new BulletStraight(new PVector(-99, 0), new PVector(p.loc.x, p.loc.y), 5, 1, 10.0, true));
      shootTime = millis();
    }
  }
}

