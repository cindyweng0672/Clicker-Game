int highScore() {
  if (score>temp) {
    temp=score;
  }

  return temp;
}

void gameover() {
  fill(yellow);
  background(red);
  image(end, 200, 100);
  end.resize(400, 400);
  textSize(60);
  text("Game Over", width/2, height/2);
  text("High Score:"+highScore(), 400, 600);
  theme.pause();
  
  //exit
  fill(yellow);
  rect(500, 700, 100, 50);
  rect(650, 700, 100, 50);
  
  fill(black);
  textSize(20);
  text("replay", 550, 720);
  text("exit", 700, 720);
}

void gameoverClicks() {
  if (mode==GAMEOVER) {
    if (mouseX>400 && mouseX<500 && mouseY>600 && mouseY<650) {
      mode=GAME;
    }
  }
    gameover.pause();
    lives=5;
    score=0;
    vx=random(-3, 3); 
    vy=random(-3, 3);
  
  if(mouseX>500 && mouseX<600 && mouseY<750 && mouseY>700){
    mode=GAME;
    theme.play();
  }else if(mouseX>650 && mouseX<750 && mouseY<750 && mouseY>700){
    exit();
  }
}
