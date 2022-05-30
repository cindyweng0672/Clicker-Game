int a=250;
int b=500;
int c=300;
int e=100;

void intro(){
  //theme.rewind();
  //theme.play();
  
  setBackground();
  themePicture.resize(400, 400);
  image(themePicture, 200, 100);
  //text-clicker game
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(font);
  textSize(70);
  text("Clicker Game", a+(c/2), b-e);
 
  //text-start
  rectButton("Start", 40, a-(c/10), b+(e/2), black, a/3, b, c, e, white, 10, black);
  
  //text-option
  rectButton("Option", 40, a*2.3, b+(e/2), black, 1.7*a, b, c, e, white, 10, black);
}

void introClicks(){
  if (mouseX > a/3 && mouseX<(a/3)+c && mouseY>b && mouseY<b+e){
    mode=GAME;
  }else if(mouseX>1.7*a && mouseX<(1.7*a)+c && mouseY>b && mouseY<b+e){
    mode=OPTION;
  }
}
