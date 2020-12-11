class Bullet extends Floater
{
  public Bullet(Spaceship theShip)
  {
    myCenterX = theShip.getCenterX();
    myCenterY = theShip.getCenterY();
    myXspeed = theShip.getDirectionX();
    myXspeed = theShip.getDirectionY();
    myPointDirection = theShip.getPointDirection();
    accelerate(6);
  }
  public void show()
  {
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public double getBulletCenterX(){
    return myCenterX;
  }
  public double getBulletCenterY(){
    return myCenterY;
  }
}
