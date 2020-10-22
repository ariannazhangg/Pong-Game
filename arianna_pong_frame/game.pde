void game() {
  background(grey);
  
  // draw paddles
  strokeWeight(5);
  stroke(lightpurple);
  fill(purple);
  circle(leftx, lefty, leftd);
  fill(sky);
  stroke(lightsky);
  circle(rightx, righty, rightd);
  
  //score
  textSize(30);
  fill(white);
  text(leftscore, width/4, 100);
  text(rightscore, 3*width/4, 100);
  
  //move paddles
  if(wkey == true) lefty = lefty - 10;
  if(skey == true) lefty = lefty + 10;
  
  //ai
  if(AI == false) {
    if(upkey == true) righty = righty - 10;
    if(downkey == true) righty = righty + 10;
  } else {
    if (ballx > 400) {
     if (bally > 300) {
       righty = righty + 10;
     }
     if (bally < 300) {
       righty = righty - 10;
     }
     if (bally == 300) {
       righty = 300; 
     }
    }
  }
    
  //ball
  strokeWeight(5);
  stroke(lightblue);
  fill(darkblue);
  circle(ballx, bally, balld);
  
  //moving ball
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }
  timer = timer - 1;
  
  //score
  if(ballx < 0) {
    rightscore++;
    score.rewind();
    score.play();
    ballx = width/2;
    bally = height/2;
    timer = 100; 
    vx = 4;
    vy = 0;
  }
  
  if(ballx > 810) {
    leftscore++;
    score.rewind();
    score.play();
    ballx = width/2;
    bally = height/2;
    timer = 100; 
    vx = 4;
    vy = 0;
  }
  
  //right paddle collision
  if (dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) {
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
    rightpaddle.rewind();
    rightpaddle.play();
  }
  
  //left paddle collision
  if (dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) {
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
    leftpaddle.rewind();
    leftpaddle.play();
  }
  
  //border ball
  if (bally < balld/2 || bally > height-balld/2) {
    vy = vy * -1;
    wall.rewind();
    wall.play();
  }
  
  //border left paddle
  if (lefty > 495) {
    lefty = 495;
  }
  if (lefty < 100) {
    lefty = 100;
  }
  
  //border right paddle
  if (righty > 495) {
    righty = 495;
  }
  if (righty < 100) {
    righty = 100;
  }
  
  // go to gameover
  if (leftscore == 3) {
    mode = GAMEOVER;
  }
  
  if (rightscore == 3){
    mode = GAMEOVER;
  }
  
  //pause button
  stroke(52, 51, 167);
  fill(white);
  pausetactile(70, 70, 80);
  circle(70, 70, 80);
  fill(black);
  stroke(10);
  line(57, 57, 57, 85);
  line(85, 57, 85, 85);
}

void gameClicks() {
 if (dist(mouseX, mouseY, 80, 80) < 80) {
    mode = PAUSE;
    button.rewind();
    button.play();
  }
}
