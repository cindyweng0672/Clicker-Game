void option() {
  setBackground();
  strokeWeight(5);
  stroke(white);

  //table setting
  textSize(25);
  textAlign(CENTER, CENTER);
  fill(yellow);
  text("table color", 150, 300);
  roundButton(150, 400, 100, darkGreen);
  roundButton(270, 400, 100, darkBlue);
  roundButton(390, 400, 100, black);

  //ball setting 
  textSize(25);
  fill(yellow);
  text("ball color", 150, 500);
  ball(white, 150, 600, 100);
  ball(orange, 300, 600, 100);

  //start
  fill(yellow);
  rect(600, 600, 100, 100);
  fill(black);
  textSize(25);
  text("start", 650, 650);

  //slider
  slider();
}

void mouseClicked() {
  if (mode==OPTION) {
    //set background
    if (dist(150, 400, mouseX, mouseY)<50) {
      colorSelected=roundButton(300, 400, 60, darkGreen);
    } else if (dist(270, 400, mouseX, mouseY)<50) {
      colorSelected=roundButton(300, 400, 60, darkBlue);
    } else if (dist(390, 400, mouseX, mouseY)<50) {
      colorSelected=roundButton(390, 400, 100, black);
    }

    //set ball 
    if (dist (mouseX, mouseY, 150, 600)<50) {
      ball(white, 150, 600, 100);
      colorSelectedB=white;
      on=true;
    }
    if (dist(mouseX, mouseY, 300, 600)<50) {
      ball(orange, 300, 600, 100);
      colorSelectedB=orange;
      on=true;
    }

    //start
    if (mouseX<700 && mouseX>600 && mouseY<700 && mouseY>600) {
      mode=GAME;
    }
  }
}
