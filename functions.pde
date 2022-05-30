void rectButton(String text, int size, float xt, float yt, color colourt, float x, float y, int w, int h, color colour, int stroke, color strokeColor) {
  strokeWeight(stroke);
  stroke(strokeColor);
  fill(colour);
  rect(x, y, w, h);
  fill(colourt);
  textSize(size);
  text(text, xt, yt);
}

color roundButton(int cx, int cy, int r, color colour) {
  fill(colour);
  circle(cx, cy, r);
  return colour;
}

void setBackground() {
  strokeWeight(0);
  stroke(colorSelected);
  background(colorSelected);
  fill(white);
  rect(0, 390, 800, 20);
}

void themebackground(color colour) { 
  fill(colour);
  rect(0, 0, 800, 800);
  fill(white);
  rect(0, 390, 800, 20);
  image(themePicture, 200, 200);
  themePicture.resize(400, 400);
}

color ball(color colour, float x, float y, float d) {
  if(mode==OPTION){
  if(dist(mouseX, mouseY, x, y)<(d/2)){
    on=true;
  }else on=false;
  
  if (on==true) {
    stroke(red);
    strokeWeight(10);
  }else{
  stroke(colour);
  strokeWeight(0);
  }
  }else{
  stroke(colour);
  strokeWeight(0);
  }
  fill(colour);
  circle(x, y, d);
  fill(yellow);
  strokeWeight(0);
  ellipse(x-(d/5), y-(d/6), d/5, d/2);
  circle(x-(d/5), y+(d/4), d/7);
  colorSelectedB=colour;
  return colorSelectedB;
}

float slider() {
  float x=200;
  float y=200;
  size=map(sliderX, 100, 900, 50, 200);

  fill(white);
  strokeWeight(10);
  stroke(yellow);
  line(x, y, x+400, y);
  controlSlider();
  circle(sliderX, y, size);

  return size;
}

void controlSlider() {
  if (mode==OPTION) {
    if (mouseX>200+(size/2) && mouseX<600-(size/2) && mouseY<200+(size/2) && mouseY>200-(size/2)) {
      sliderX=mouseX;
    }
    if (mouseX<200 && mouseY>200+(size/2) && mouseY<200-(size/2)) {
      sliderX=200;
    }
    if (mouseX>600 && mouseY>200+(size/2) && mouseY<200-(size/2)) {
      sliderX=600;
    }
  }
}

void reset(){
  fill(yellow);
  rect(650, 650, 100, 50);
  textSize(20);
  fill(black);
  text("reset", 700, 670);
}
