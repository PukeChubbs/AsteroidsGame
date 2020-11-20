class Spaceship extends Floater  {
  public Spaceship() {
    corners = 3; //the number of corners,
    xCorners = new int[corners];
    yCorners = new int[corners];  
    xCorners[0] = -8;   
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myColor = 225;  //white spaceship 
    myCenterX = 200;
    myCenterY = 200; //holds center coordinates   
    myXspeed = 0; 
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 270;
  }
  public void setDirectionX(double x){
    myXspeed = x;
  }
  public void setDirectionY(double y){
    myYspeed = y;
  } 
  public double getDirectionX(){
    return myXspeed;
  }
  public double getDirectionY(){
    return myYspeed;
  }
  public void setCenterX(double x){
    myCenterX = x;
  }
  public void setCenterY(double y){
    myCenterY = y;
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public void setPointDirection(double degrees){
    myPointDirection = degrees;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
}
