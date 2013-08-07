Player p;
ArrayList<Enemy> enemies;
ArrayList<Bullet> bullets;
boolean[] keys;
boolean autoFire;
boolean facingRight;

void setup()
{
  size(displayWidth, displayHeight);
  smooth();
  noStroke();
  rectMode(CENTER);
  keys = new boolean[5];
  autoFire = true;
  facingRight = true;
  reset();
}

void reset()
{
  p = new Player(new PVector(), new PVector(width / 2, height / 2), 20, 1, millis(), 6.0);
  bullets = new ArrayList<Bullet>();
  enemies = new ArrayList<Enemy>();
  enemies.add(new EnemyA(new PVector(), new PVector(100, 100), 20, 10, millis(), 500, 6.0));
}

void draw()
{
  fill(127.5, 170);
  rect(width / 2, height / 2, width, height);
  for (Bullet b : bullets)
  {
    b.run();
    b.show();
  }
  for (Enemy e : enemies)
  {
    e.run();
    e.show();
  }
  for (int i = 0; i <= enemies.size() - 1; i ++)
  {
    Enemy e = enemies.get(i);
    if (e.hp <= 0)
    {
      enemies.remove(i);
      break;
    }
  }
  p.run();
  p.show();
}

void keyPressed()
{
  if (key == 'a')
    keys[0] = true;
  if (key == 'd')
    keys[1] = true;
  if (key == 'w')
    keys[2] = true;
  if (key == 's')
    keys[3] = true;
  if (keyCode == SHIFT)
    keys[4] = true;
  if (key == 'r')
    reset();
  if (key == 'f')
    autoFire = !autoFire;
  if (keyCode == LEFT)
    facingRight = false;
  if (keyCode == RIGHT)
    facingRight = true;
}

void keyReleased()
{
  if (key == 'a')
    keys[0] = false;
  if (key == 'd')
    keys[1] = false;
  if (key == 'w')
    keys[2] = false;
  if (key == 's')
    keys[3] = false;
  if (keyCode == SHIFT)
    keys[4] = false;
}

