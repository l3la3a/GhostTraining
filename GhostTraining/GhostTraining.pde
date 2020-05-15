Star[] stars;
int SCREEN_SIZE_X=445;
int SCREEN_SIZE_Y=285;
int STAR_AMOUNT=15; //stars array size
Wall frontwall;
Wall backwall;
Ghost bigGhost;
Ghost[] babyGhosts;
int time;
void setup(){

  size(445,285);
  stars = new Star[STAR_AMOUNT];
  for(int i=0; i<STAR_AMOUNT;i++){
    stars[i] = new Star();
    stars[i].setPosition(random(1,SCREEN_SIZE_X),random(1,SCREEN_SIZE_Y),random(0,255));
  }
  backwall = new Wall(0,0);
  frontwall = new Wall(-50,50);
  bigGhost = new Ghost(160,139,100);
  babyGhosts= new Ghost[3];
  for(int i=0; i<3; i++){
    babyGhosts[i] = new Ghost(250+50*i,180,43);
  }
  
  time =0;
}
void draw(){
  background(22,39,56);
  for(int i=0;i<STAR_AMOUNT;i++){
    stars[i].update();
    stars[i].display();
  }
  backwall.display(SCREEN_SIZE_Y);
  
  bigGhost.update();  bigGhost.display(); 
  for(int i=0; i<3; i++){
    babyGhosts[i].update();
    babyGhosts[i].display();
  }
  time+=1;
  if(time>=60 && time<120){ //1~2 sec scene
    bigGhost.setSpeed(2);
    bigGhost.setDirection(true);
    bigGhost.setMove(true);
  }
  if(time>=90 && time<130){
    babyGhosts[0].setSpeed(2);
    babyGhosts[0].setDirection(true);
    babyGhosts[0].setMove(true);
  }
  if(time>=100 && time<140){
    babyGhosts[1].setSpeed(2);
    babyGhosts[1].setDirection(true);
    babyGhosts[1].setMove(true);
  }
  if(time==150){
    bigGhost.setMove(false);
  }
  if(time>=180&&time<200){
    babyGhosts[2].setSpeed(1);
    babyGhosts[2].setDirection(true);
    babyGhosts[2].setMove(true);
  }
  if(time==280){
    babyGhosts[2].setMove(false);
  }
  if(time==320){
    babyGhosts[1].setMove(false);
    babyGhosts[0].setMove(false);
    bigGhost.setDirection(false);
    bigGhost.setSpeed(3);
    bigGhost.setMove(true);
  }
  if(time==400){
    babyGhosts[2].setDirection(false);
  }
  if(time==440){
    bigGhost.setDirection(true);
    bigGhost.setSpeed(2);
    babyGhosts[2].setDirection(true);
    babyGhosts[2].setSpeed(2);
    babyGhosts[2].setMove(true);
  }
  if(time==800){
    bigGhost.setMove(false);
    babyGhosts[2].setMove(false);
  }
  frontwall.display(SCREEN_SIZE_Y);
}
