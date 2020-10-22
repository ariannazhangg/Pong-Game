void gameover() {
  
  if (leftscore == 3) {
    background(purple);
    text("PURPLE", 400, 290);
    clap.play();
  }
  
  if (rightscore == 3) {
    background(sky);
    text("BLUE", 400, 290);
    clap.play();
  }
  
  //gameover text
  textFont(pixel);
  strokeWeight(0);
  stroke(0);
  fill(white);
  textSize(39);
  text("GAMEOVER", 400, 190);
  text("WINS", 400, 390);
}

void gameoverClicks() {
  clap.pause();
  clap.rewind();
  mode = INTRO;
  reset();
}
