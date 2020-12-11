class Asteroid extends Floater
{ 
  private double rotSpeed;
  public Asteroid()
  {
    corners = 6;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));  //white Asteroid 
    myCenterX = ((int)(Math.random() * 400));
    myCenterY = ((int)(Math.random() * 400)); //holds center coordinates   
    myXspeed = ((int)(Math.random() * 5) - 2); 
    myYspeed = ((int)(Math.random() * 5) - 2); //holds the speed of travel in the x and y directions   
    myPointDirection = ((int)(Math.random() * 360));
    rotSpeed = ((int)(Math.random() * 5) + 1);
  }
  public void move ()   //move the Asteroid in the current direction of travel
  {      
    turn(rotSpeed);
    super.move();
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
  public void setCenterX(double x)
  {
    myCenterX = x;
  }
  public void setCenterY(double y)
  {
    myCenterY = y;
  }
}
