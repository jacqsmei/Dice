void setup() {
  size(900, 1000);
  background(192);
  textAlign(CENTER, CENTER);
  textSize(20);
  noLoop();
}

void draw() {
  background(192);
  int numDots = 0;
  for (int row = 15; row < 900; row += 100) {
    for (int col = 15; col < 900; col += 100) {
      Die bob = new Die(col, row);
      bob.show();
      numDots+=bob.myVal;
    }
  }
  text("Number of dots: " + numDots, 450, 950);
}

void mousePressed() {
  redraw();
}

class Die { //models one single dice cube

  //variable declarations
  int myX, myY, myVal;

  Die(int x, int y) { //constructor
    //variable initializations
    myX = x;
    myY = y;
    roll();
  }

  void roll() {
    myVal = (int) (Math.random() * 6) + 1;
  }

  void show()
  {
    fill(255);
    stroke(255);
    rect(myX, myY, 70, 70, 10);
    fill(0);
    stroke(0);
    if (myVal == 1) {
      center();
    } else if (myVal == 2) {
      topLeft();
      bottomRight();
    } else if (myVal == 3) {
      topRight();
      center();
      bottomLeft();
    } else if (myVal == 4) {
      topLeft();
      topRight();
      bottomLeft();
      bottomRight();
    } else if (myVal == 5) {
      center();
      topLeft();
      topRight();
      bottomLeft();
      bottomRight();
    } else {
      topLeft();
      topRight();
      bottomLeft();
      bottomRight();
      middleLeft();
      middleRight();
    }
  }

  void center() {
    ellipse(myX+35, myY+35, 10, 10);
  }

  void topLeft() {
    ellipse(myX+10, myY+10, 10, 10);
  }

  void bottomRight() {
    ellipse(myX+60, myY+60, 10, 10);
  }

  void topRight() {
    ellipse(myX+60, myY+10, 10, 10);
  }

  void bottomLeft() {
    ellipse(myX+10, myY+60, 10, 10);
  }

  void middleLeft() {
    ellipse(myX+10, myY+35, 10, 10);
  }

  void middleRight() {
    ellipse(myX+60, myY+35, 10, 10);
  }
}
