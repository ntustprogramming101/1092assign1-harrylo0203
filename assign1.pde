int X=80;

PImage bg;
PImage soil;
PImage hog;
PImage life;
PImage soldier;
PImage robot;

int soldierX = 80;
int soldierWidth = 80;
int hogWidth = 80;

//soldier random move
float soldierY = X*floor(random(2,5.99));

//robot random move
float robotX = X*floor(random(2,7.99));
float robotY = X*floor(random(2,5.99));

int soldierSpeed = 5;
int grass = 15;
int lifeWidth = 50;

void setup() {
	size(640, 480, P2D);

  //background
  bg = loadImage("img/bg.jpg");
    image(bg, 0, 0, 640, 480);
    
  //grass
  fill(124,204,25);
  noStroke();
  rect(0,X*2-grass,X*8,grass);
  
  //groundhog
  hog = loadImage("img/groundhog.png");
    image(hog, X*4-hogWidth/2, X);
    
  //life
  life = loadImage("img/life.png");
    image(life , 10, 10);
    image(life , 10+lifeWidth+20, 10);
    image(life , 10+(lifeWidth+20)*2, 10);

  //big sun
  fill(255,255,0);
  circle(640-50,50,120+5*2);
  
  //small sun
  fill(253,184,19);
  circle(640-50,50,120);

}

void draw() {
  
  //soil
  soil = loadImage("img/soil.png");
  image(soil, 0, X*2, X*8, X*4);
  
  //soldier
  soldier = loadImage("img/soldier.png");
    image(soldier, soldierX-soldierWidth, soldierY);  
  
  //soldier move to right
    soldierX+=soldierSpeed;
    soldierX%=640+soldierWidth;

  //robot
  robot = loadImage("img/robot.png");
    image(robot, robotX, robotY); 

}
  
