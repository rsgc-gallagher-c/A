//Carlyle Gallagher 
//Game Project 



Player P1; //makes new player 

void setup() {

  //Make canvas 
  size(200, 300);

  P1 = new Player (100, 108, 92);
}

void draw() {

  // background clears each time the program loops
  background(255);

  P1.update();

  //Left side line
  line(80, 280, 80, 100);

  //Right side line 
  line( 120, 280, 120, 100);
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