class Wall{
  //never move
  float posX;
  float posY;
  int BRICK_SIZE=5;
  Brick[] bricks = new Brick[BRICK_SIZE];
  Wall(float x,float y){
    posX = x;
    posY = y;
      for(int i=0; i<BRICK_SIZE;i++){
        bricks[i] = new Brick();
      }
      bricks[0].setPosition(posX+50,posY+50);
      bricks[1].setPosition(posX+13,posY+71);
      bricks[2].setPosition(posX+-25,posY+176);
      bricks[3].setPosition(posX+12,posY+197);
      bricks[4].setPosition(posX+40,posY+256);
    
  }
  void display(float screenSizeY){
    fill(71,62,67);
    rect(posX,posY,90,screenSizeY);
    noStroke();

      for(int i=0; i<BRICK_SIZE;i++){
        bricks[i].display();
      }
    
  }
}
