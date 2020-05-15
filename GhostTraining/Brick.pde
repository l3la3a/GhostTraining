class Brick{

  float posX;
  float posY;
  float SIZE_X=37;
  float SIZE_Y=21;
  
  void setPosition(float x,float y){
  posX = x;
    posY = y;
  }
  void display(){
    fill(103,108,86); //brick
    rect(posX,posY,SIZE_X,SIZE_Y);
    noStroke();
    
    fill(35,30,40); //shadow
    rect(posX,posY+SIZE_Y,SIZE_X,2);
    noStroke();
  }

}
