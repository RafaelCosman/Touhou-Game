Player p;
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
  keys = new boolean[4];
  autoFire = true;
  facingRight = true;
  reset();
}

void reset()
{
  p = new Player(new PVector(), new PVector(width / 2, height / 2), 20, 1, millis(), 6.0);
  bullets = new ArrayList<Bullet>();
}

void draw()
{
  fill(127.5, 150);
  rect(width / 2, height / 2, width, height);
  for (Bullet b : bullets)
  {
    b.run();
    b.show();
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
}

