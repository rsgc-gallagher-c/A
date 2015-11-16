//Carlyle Gallagher 
//Game Project 

Player P1; //makes new player 


void setup() {

  //Make canvas 
  size(200, 300);
  
  //Create new player
  P1 = new Player (100, 108, 92);
}

void draw() {

  // background clears each time the program loops
  background(255);
createRandomLine(0, 50, 50, 0);
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

void createRandomLine(int xc, int yc, int xc1,int yc1)
{
 beginShape();
 for(int i = 0; i < 8; i++)
 {
 vertex(random(xc, xc1), i*10 );
 }
 
 endShape();
}