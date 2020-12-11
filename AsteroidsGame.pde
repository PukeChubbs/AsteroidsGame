Spaceship bob = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList<Asteroid>();
ArrayList <Bullet> shots = new ArrayList<Bullet>();
Star [] nightSky = new Star[200];
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean dIsPressed = false;
boolean qIsPressed = false;
boolean spaceIsPressed = false;
public void setup() 
{
  size(400, 400);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  background(0);
  bob.accelerate(0.2);
  for (int i = 0; i < ((int)(Math.random() * 3) + 4); i++)
  {
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  if (wIsPressed == true) {
    bob.accelerate(0.2);
  }
  if (dIsPressed == true) {
    bob.turn(5);
  }
  if (aIsPressed == true) {
    bob.turn(-5);
  }
  bob.move();
  bob.show();
  
  for (int i = 0; i < shots.size(); i++) {
    shots.get(i).move();
    shots.get(i).show();
    if (shots.get(i).getBulletCenterX() >= 390 || shots.get(i).getBulletCenterX() <= 10 || shots.get(i).getBulletCenterY() >= 390 || shots.get(i).getBulletCenterY() <= 10) {
      shots.remove(i);
    }
  }
  
  for (int i = 0; i < rocks.size(); i++)
  {
    rocks.get(i).move();
    rocks.get(i).show();
    float p = dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (p < 10) {
      for (int k = 0; k < rocks.size(); i++)
      {
      rocks.remove(k);
      }
      bob.setCenterX(200);
      bob.setCenterY(200);
      bob.setDirectionX(0);
      bob.setDirectionY(0);
    }
  }
  for (int j = 0; j < shots.size(); j++)
  {
    for (int k = 0; k < rocks.size(); k++)
    {
    float d = dist((float)shots.get(j).getBulletCenterX(), (float)shots.get(j).getBulletCenterY(), (float)rocks.get(k).getX(), (float)rocks.get(k).getY());
    if (d < 10) {
      rocks.remove(k);
      }
    }
  }
}
public void keyPressed() {
  if (key == 'w') {
    wIsPressed = true;
  }
  if (key == 'd') {
    dIsPressed = true;
  }
  if (key == 'a') {
    aIsPressed = true;
  }
  if (key == 'q') {
    qIsPressed = true;
  }
  if (key == ' ') {
    spaceIsPressed = true;
    shots.add(new Bullet(bob));
  }
}
public void keyReleased() {
  if (key == 'w') {
    wIsPressed = false;
  }
  if (key == 'd') {
    dIsPressed = false;
  }
  if (key == 'a') {
    aIsPressed = false;
  }
  if (key == 'q') {
    qIsPressed = false;
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setCenterX((int)(Math.random() * 350));
    bob.setCenterY((int)(Math.random() * 350));
    bob.setPointDirection((int)(Math.random() * 360));
  }
  if (key == ' ') {
    spaceIsPressed = false;
  }
}
