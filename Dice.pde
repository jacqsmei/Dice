void setup() {
	size(900,900);
	background(192);
	textAlign(CENTER,CENTER);
	noLoop();
}

void draw() {
	background(192);
	for (int row = 15; row < 900; row += 100) {
		for (int col = 15; col < 900; col += 100) {
			Die bob = new Die(col, row);
			bob.show();
		}
	}
}

void mousePressed() {
	redraw();
}

class Die {//models one single dice cube 

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
		System.out.println(myVal);
	}

	void show()
	{
		fill(255);
		stroke(255);
		rect(myX, myY, 70, 70);
		fill(0);
		stroke(0);
		if (myVal == 1) {
			ellipse(myX+35, myY+35, 10, 10);
		} else if (myVal == 2) {
			ellipse(myX+10, myY+10, 10, 10);
			ellipse(myX+60, myY+60, 10, 10);
		} else if (myVal == 3) {
			ellipse(myX+60, myY+10, 10, 10);
			ellipse(myX+35, myY+35, 10, 10);
			ellipse(myX+10, myY+60, 10, 10);
		} else if (myVal == 4) {
			ellipse(myX+10, myY+10, 10, 10);
			ellipse(myX+60, myY+10, 10, 10);
			ellipse(myX+10, myY+60, 10, 10);
			ellipse(myX+60, myY+60, 10, 10);
		} else if (myVal == 5) {
			ellipse(myX+10, myY+10, 10, 10);
			ellipse(myX+60, myY+10, 10, 10);
			ellipse(myX+10, myY+60, 10, 10);
			ellipse(myX+60, myY+60, 10, 10);
			ellipse(myX+35, myY+35, 10, 10);
		} else {
			ellipse(myX+10, myY+10, 10, 10);
			ellipse(myX+60, myY+10, 10, 10);
			ellipse(myX+10, myY+60, 10, 10);
			ellipse(myX+60, myY+60, 10, 10);
			ellipse(myX+10, myY+35, 10, 10);
			ellipse(myX+60, myY+35, 10, 10);
		}
	}
}
