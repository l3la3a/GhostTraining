class Ghost{
  
  float initX;
  float initY;
  float posX;
  float posY;
  float radius;
  float speed;
  boolean HorizontalDirection=true; //true:left, false:right
  boolean HorizontalMove=false;
  boolean VerticalDirection=true; //true:up, false:down
  float eyePosX;
  int VERTICAL_MOVE_SIZE=5;
  
  Ghost(float x, float y,float s){
    initX=x;
    initY=y;
    posX =x;
    posY =y;
    radius = s/2;
   int randomDirection=int(random(0,2));
   if(randomDirection==0){
     VerticalDirection=true;
   }else{
     VerticalDirection=false;
   }
    
  }
  
  void update(){
      if(VerticalDirection){
        posY+=0.2;
        if(posY>initY+VERTICAL_MOVE_SIZE){
          VerticalDirection=false;
        }
      }else{
        posY-=0.2;
        if(posY<initY-VERTICAL_MOVE_SIZE){
          VerticalDirection=true;
        }
      }
      if(HorizontalMove){
        if(HorizontalDirection){
          posX-=speed;
        }else{
          posX+=speed;
        }
      }
  }
  void setMove(boolean moving){
    HorizontalMove = moving;
  }
  void setDirection(boolean Direction){
    HorizontalDirection = Direction;
  }
  void setSpeed(float speedValue){
    speed=speedValue;
  }
  void display(){
    
    
    fill(239,244,205);
    circle(posX,posY,radius*2);
    noStroke();
    rect(posX-radius,posY,radius*2,radius*1.3);
    circle(posX-radius+(radius*0.25),posY+(radius*1.3),radius/2);
    circle(posX-radius+(radius*0.25)*3,posY+(radius*1.3),radius/2);
    circle(posX-radius+(radius*0.25)*5,posY+(radius*1.3),radius/2);
    circle(posX-radius+(radius*0.25)*7,posY+(radius*1.3),radius/2);
    
    fill(7,17,42);
    if(HorizontalDirection){
      eyePosX=-(radius*0.15);
    }else{
      eyePosX=(radius*0.15);
    }
    circle(posX-(radius*0.4)+eyePosX,posY,radius/3);
    circle(posX+(radius*0.4)+eyePosX,posY,radius/3);
    
  }

}
