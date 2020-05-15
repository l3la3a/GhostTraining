class Star{
  float posX;
  float posY;
  float alphaValue;
  boolean transparentState;
  
  Star(){}
  void setPosition(float x,float y,float alpha){
    posX=x;
    posY=y;
    alphaValue = alpha;
  }
  void display(){
    fill(126,214,144,alphaValue);
    rect(posX,posY,5,5);
    noStroke();
  }
  void update(){
    if(transparentState){
      alphaValue-=5;
      if(alphaValue<125){
        transparentState=false;
      }
    }else{
      alphaValue+=5;
      if(alphaValue>200){
        transparentState=true;
      }
    }
  }
}
