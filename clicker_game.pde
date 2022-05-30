import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//mode framework
int mode;
final int INTRO=0;;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int OPTION=4;

//colors
color black=#151414;
color white=#FFFFFF;
color darkGreen=#23982C;
color darkBlue=#1A49C6;
color yellow=#FFFFAD;
color orange=#FFD45D;
color red=#FC7954;
color colorSelected=darkGreen;
color colorSelectedB=white;

//target variables 
float x, y, d;
float vx, vy;
int score, lives;
int temp;
float sliderX;
float size;
boolean on=false;

//sound variables 
Minim minim;
AudioPlayer coin, bump, gameover, theme;

//text
PFont font;

//image
PImage themePicture;
PImage end;

void setup(){
  size(800, 800);
  mode=INTRO;
  
  //initialize the target
  x=width/2;
  y=height/2;
  d=100;
  score=0;
  lives=5;
  
  //slider
  sliderX=200;
  
  //initialize minim
  minim = new Minim(this);
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  theme = minim.loadFile("mario.mp3");
  
  vx=random(-2, 2); 
  vy=random(-2, 2);
 
  //image
  themePicture=loadImage("themepicture.png");
  end=loadImage("crying.png");
  
  //font
  font=createFont("font.ttf", 20);
}

void draw(){
  if (mode==INTRO){
    intro();
  }
  else if (mode==GAME){
    game();
  }
  else if (mode==PAUSE){
    pause();
  }
  else if (mode==GAMEOVER){
    gameover();
  }
  else if (mode==OPTION){
    option();
  }
  else{
    println("Error: Mode = "+mode);
  }
  
}
