//Carlyle Gallagher 
//Game Project 

Player P1; //makes new player 
Walls LW;  //makes left wall 
Walls RW;  //makes right wall 

void setup() {

  //Make canvas 
  size(200, 300);

  P1 = new Player (100, 108, 92);
  LW = new Walls  line(80, 280, 80, 100); 
  RW = new Walls  line( 120, 280, 120, 100);
}

void draw() {

  // background clears each time the program loops
  background(255);

  P1.update();
  LW.update();
  RW.update();
}

//respond to key pressed 
void keyPressed() {

  if (key == 'a') {
    print("a was pressed");
    P1.sets1 (+1);
  }
  if (key == 'd') {
    print("d was pressed");
    P1.sets1 (-1);
  }
}

void keyReleased() {
  P1.sets1 (0);
}