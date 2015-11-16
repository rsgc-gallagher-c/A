//Carlyle Gallagher 
//Game Project 

Player P1; //makes new player 
float oldX;  // starting X of current segment
float oldY;  // starting Y of current segment
float newX;  // ending X of current segment
float newY;  // ending Y of current segment

float xChange;  // change for horizontal
float yChange;  // change for horizontal

void setup() {

  //Make canvas 
  size(200, 300);

  // initial starting point for wall
  oldX = 0;
  oldY = 100;

  // initial ending point for wall
  newX = 150;
  newY = 100;

  // slow it down
  frameRate(1);

  //Create new player
  P1 = new Player (100, 108, 92);
}

void draw() {

  // background clears each time the program loops
  background(255);

  P1.update();

  //Create walls 
  line(80, 280, 80, 100); 
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