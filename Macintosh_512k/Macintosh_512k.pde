//
//Author: Joshua Kantarges
//  Description: A mock up version of a macintosh 512k, featuring a interactive "operating system" 
//                 with 4 clickable applications that can also be opened with "u" for tutorial
//                  "w" for words, "t" for timer, and "g" for game.
//

PImage appleLogo, diskDrive, macBack, tutorial, words, timer, game;

void setup() {
  size(600, 700); 
  appleLogo = loadImage("Apple Logo.jpg");
  diskDrive = loadImage("Disk Drive.jpg");
  macBack = loadImage("Mac Background2.png");
  tutorial = loadImage("Tutorial.png");
  words = loadImage("Words.png");
  timer = loadImage("Timer.png");
  game = loadImage("Game.png");
}

int img = 1;
int begin; 
int duration = 20;
int time = 20;

void macCase() {
  noStroke();

  //Bezel
  fill(227, 210, 176);
  rect(0, 0, 600, 30, 20);
  rect(0, 0, 15, 700, 20);

  fill(206, 187, 152);
  rect(12, 30, 600, 35, 20);
  rect(12, 30, 35, 700, 20);
  rect(565, 30, 35, 700, 20);
  rect(12, 440, 600, 350);

  fill(215, 209, 190);
  rect(45, 425, 520, 20, 10);
  rect(550, 65, 20, 380, 10);

  fill(183, 167, 137);
  rect(45, 65, 525, 20, 10);
  rect(45, 65, 20, 380, 10);

  fill(188, 172, 144);
  rect(12, 665, 600, 35, 10);

  fill(185, 170, 142);
  rect(585, 30, 15, 700, 20);

  //Screen
  fill(64, 57, 67);
  rect(60, 80, 495, 350, 20);

  //Apple logo
  image(appleLogo, 40, 600, 40, 40);

  //Disk Drive
  image(diskDrive, 230, 520, 340, 50);

  // Macintosh Background
  image(macBack, 70, 90, 475, 330);
}

void tutorial() {
  image(tutorial, 75, 115, 400, 300);
  fill(0);
  ellipse(100, 390, 30, 30);
  beginShape();
  vertex(95, 372);

  vertex(108, 360);

  vertex(112, 360);

  vertex(103, 372);

  vertex(95, 372);
  endShape();
}

void words() {

  image(words, 75, 115, 400, 300);
}


void timer() {
  image(timer, 75, 115, 400, 300);
}

void game() {
  image(game, 75, 115, 400, 300);
}

void draw() {
  macCase();
  display();
}

void display() {
  if (img == 1) {
    tutorial();
  } else if (img == 2) {
    game();
  } else if (img ==3) {
    timer();
  } else if (img == 4) {
    words();
  }
}

void mousePressed() {
  if (mouseX > 480 && mouseX <530 && mouseY > 115 && mouseY < 180) {
    img = 2;
  }
  if (mouseX > 480 && mouseX <530 && mouseY > 190 && mouseY < 255) {
    img = 3;
  }
  if (mouseX > 480 && mouseX <530 && mouseY > 265 && mouseY < 320) {
    img = 4;
  }
  if (mouseX > 480 && mouseX <530 && mouseY > 340 && mouseY < 405) {
    img = 1;
  }
  if (mouseX >80 && mouseX <95 && mouseY >120 && mouseY <135) {
    img = 0;
  }
}

void keyPressed() {
  if (key == 'g') {
    img =2;
  } else if (key == 't') {
    img = 3;
  } else if (key == 'w') {
    img = 4;
  } else if (key == 'u') {
    img = 1;
  } else if (key == 'x') {
    img = 0;
  }
}
