//2 player tactile
void twoplaytactile (int x, int y, int w, int h) {
    if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    strokeWeight(5);
    stroke(purple);
  } else {
    stroke(sky);
  }
}

//1 player tactile
void oneplaytactile (int x, int y, int w, int h) {
    if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    strokeWeight(5);
    stroke(purple);
  } else {
    stroke(sky);
  }
}

// reset
void reset () {
  leftscore = rightscore = 0;
  timer = 100;
  vx = 4;
  vy = 0;
  lefty = height/2;
  righty = height/2;
  AI = false; 
}

//pause tactile
void pausetactile (int x, int y, int r)  {
 if (dist(x, y, mouseX, mouseY) < r) {
  stroke (sky);
  } else {
  stroke (darkblue);
  }
}
