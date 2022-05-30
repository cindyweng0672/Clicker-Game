void pause(){
  theme.pause();
  setBackground();
  fill(yellow);
  circle(width/1.2, height/8, 100);
  textSize(20);
  fill(black);
  text("Resume", width/1.2, height/8);
  textSize(70);
  text("Pause", a+(c/2), b+(e/2));
  
  //reset
  reset();
}

void pauseClicks(){
  if (mouseX>650 && mouseX<750 && mouseY<700 && mouseY>650){
   mode=OPTION;
   theme.play();
  }else if (mouseX<(width/1.2+d/2) && mouseX>(width/1.2-d/2) && mouseY>(height/8-d/2) && mouseY<height/8+d/2){
    mode=GAME;
    theme.play();
  }
}
