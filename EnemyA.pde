class EnemyA extends Enemy
{
  PVector vel, loc;
  int enemySize, hp, shootTimeCurrent, shootTimeDeadline;
  float speed;

  EnemyA(PVector vel, PVector loc, int enemySize, int hp, int shootTimeCurrent, int shootTimeDeadline, float speed)
  {
    super(vel, loc, enemySize, hp, shootTimeCurrent, shootTimeDeadline, speed);
  }

  void show()
  {
    fill(255, 0, 0);
    super.show();
  }

  void run()
  {
    super.run();
  }
}

