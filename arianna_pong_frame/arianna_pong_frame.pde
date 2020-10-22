//Arianna Zhang
// Block 1-2 A
// October 15 2020

//sound effect
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//mode framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
int leftscore, rightscore, timer;
float vx, vy; // target velocity

//keyboard variables
boolean wkey, skey, upkey, downkey;

//colours
color darkblue = #3433A7;
color lightblue = #4546E5;
color purple = #C08BFA;
color lightpurple = #D4AFFF;
color sky = #CAF1FA;
color lightsky = #E3F6FA;
color grey = #939AA0;
color white = #FFFFFF;
color black = #000000;

//font variable
PFont pixel;

// ai
boolean AI;

//intro decoration variable
int flag1, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag10, flag11, flag12;

// sound variables
Minim minim;
AudioPlayer theme, rightpaddle, leftpaddle, wall, score, button, clap;

void setup() {
  size(800, 600);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  
  //font
  pixel = createFont("Pixelmania.ttf", 200);
  
  // paddle initial
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  // ball initial
  ballx = width/2;
  bally = height/2;
  balld = 100;
  vx = 4;
  vy = 0;
  
  //score initial
  leftscore = rightscore = 0;
  timer = 100;
  
  //keyboard initial
  wkey = skey = upkey = downkey = false;
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  rightpaddle = minim.loadFile("rightpaddle.wav");
  leftpaddle = minim.loadFile("leftpaddle.wav");
  wall = minim.loadFile("wall.wav");
  score = minim.loadFile("score.wav");
  button = minim.loadFile("button.wav");
  clap = minim.loadFile("clapping.wav");
  
  //initialize background flags
  flag1 = -100;
  flag2 = 0;
  flag3 = 100;
  flag4 = 200;
  flag5 = 300;
  flag6 = 400;
  flag7 = 500;
  flag8 = 600;
  flag9 = 700;
  flag10 = 800;
  flag11 = 900;
  flag12 = 1000;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME){
    game();
  } else if (mode == PAUSE){
    pause();
  } else if (mode == GAMEOVER){
    gameover();
  } else {
    println("Mode Error :" + mode);
  }
}
