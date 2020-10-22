void intro() {
  theme.play();
  
  background(255, 126, 176);
  
  //2 player button
  strokeWeight(5);
  fill(darkblue);
  twoplaytactile(450, 400, 300, 100);
  rect(450, 400, 300, 100);
  fill(white);
  textSize(13);
  text("2 PLAYER", 600, 445);
  
  //1 player button
  strokeWeight(5);
  fill(darkblue);
  oneplaytactile(50, 400, 300, 100);
  rect(50, 400, 300, 100);
  fill(white);
  textSize(13);
  text("1 PLAYER", 200, 445);
  
  //text
  textFont(pixel);
  textSize(35);
  fill(white);
  text("ARIANNA'S COOL", 400, 190);
  text("PONG GAME", 400, 250);
  
  //flags
  strokeWeight(0);
  fill(255, 53, 46);
  ellipse(flag1, 0, 100, 100);
  fill(46, 68, 255);
  ellipse(flag2, 0, 100, 100);
  fill(209, 46, 255);
  ellipse(flag3, 0, 100, 100);
  fill(46, 201, 255);
  ellipse(flag4, 0, 100, 100);
  fill(70, 255, 46);
  ellipse(flag5, 0, 100, 100);
  fill(255, 172, 46);
  ellipse(flag6, 0, 100, 100);
  fill(174, 46, 255);
  ellipse(flag7, 0, 100, 100);
  fill(46, 142, 255);
  ellipse(flag8, 0, 100, 100);
  fill(206, 255, 46);
  ellipse(flag9, 0, 100, 100);
  fill(78, 201, 63);
  ellipse(flag10, 0, 100, 100); 
  fill(46, 255, 163);
  ellipse(flag11, 0, 100, 100);
  fill(255, 46, 161);
  ellipse(flag12, 0, 100, 100);   
  
      //moving flags!
      flag1 = flag1 + 3;
      flag2 = flag2 + 3;
      flag3 = flag3 + 3;
      flag4 = flag4 + 3;
      flag5 = flag5 + 3;
      flag6 = flag6 + 3;
      flag7 = flag7 + 3;
      flag8 = flag8 + 3;
      flag9 = flag9 + 3;
      flag10 = flag10 + 3; 
      flag11 = flag11 + 3;
      flag12 = flag12 + 3;
      
      //looping flags!
      if (flag1 > 1000 ) {
      flag1 = -200;
      }
      if (flag2 > 1000 ) {
      flag2 = -200;
      }
      if (flag3 > 1000 ) {
      flag3 = -200;
      }
      if (flag4 > 1000 ) {
      flag4 = -200;
      }
      if (flag5 > 1000 ) {
      flag5 = -200;
      }
      if (flag6 > 1000 ) {
      flag6 = -200;
      }
      if (flag7 > 1000 ) {
      flag7 = -200;
      }
      if (flag8 > 1000 ) {
      flag8 = -200;
      }
      if (flag9 > 1000 ) {
      flag9 = -200;
      }
      if (flag10 > 1000 ) {
      flag10 = -200;
      }
      if (flag11 > 1000 ) {
      flag11 = -200;
      }
      if (flag12 > 1000 ) {
      flag12 = -200;
      }
}

void introClicks() {
  //two player button click
  if (mouseX > 450 && mouseX < 750 && mouseY > 400 && mouseY < 500) {
  mode = GAME;
  button.rewind();
  button.play();
  AI = false;
  }
  
  //one player button click
  if (mouseX > 50 && mouseX < 350 && mouseY > 400 && mouseY < 500) {
  mode = GAME;
  button.rewind();
  button.play();
  AI = true;
  }
}
