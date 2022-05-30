void game(){
  float i=slider();
  setBackground();
 
  fill(yellow);
  textSize(30);
  text("score: "+score, width/2, 50);
  text("lives: " + lives, width/2, d);
  
  //target
  stroke(0);
  strokeWeight(2);
  ball(colorSelectedB, x, y, i);
  
  //pause button
  fill(yellow);
  circle(width/1.2, height/8, 100);
  fill(black);
  textSize(20);
  text("Pause", width/1.2, height/8);
  
  //reset
  reset();
  
  //moving
  x=x+vx;
  y=y+vy;
  
  //bouncing
  if(x<(d/2)||x>width-(d/2)){
    vx=-vx;
  }
  if (y<(d/2)||y>height-(d/2)){
    vy=-vy;
  }
}

void gameClicks(){
  if (dist(mouseX, mouseY, x, y)<50){
    score=score+1;
    coin.rewind();
    coin.play();
    vx=vx*1.1;
    vy=vy*1.1;
  }else if(mouseX<(width/1.2+d/2) && mouseX>(width/1.2-d/2) && mouseY>(height/8-d/2) && mouseY<height/8+d/2){
    mode=PAUSE;
  }else if (mouseX>650 && mouseX<750 && mouseY<700 && mouseY>650){
    mode=OPTION;
  }else{
    lives=lives-1;
    bump.rewind();
    bump.play();
    if (lives==0){
      mode=GAMEOVER;
      gameover.play();
    }
  }  
}
