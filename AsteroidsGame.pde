Spaceship bob = new Spaceship();
ArrayList <Asteroid> nums = new ArrayList <Asteroid>();
Star [] nightSky = new Star[200];
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean dIsPressed = false;
boolean qIsPressed = false;
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
    nums.add(new Asteroid());
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
  
  for (int i = 0; i < nums.size(); i++)
  {
    nums.get(i).move();
    nums.get(i).show();
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
}
