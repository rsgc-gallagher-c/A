//Carlyle Gallagher 
//Game Project 

//Global Variables 
float t; //top of triangle 
float r; //right of triangle 
float l; // left of triangle 


void setup() {

  //Make canvas 
  size(200, 300);

  //define a,b,c
  t = 100; 
  r = 108;
  l = 92;
}

void draw() {
  //Make the colour of the player (triangle) 
  fill(5, 5, 5);

  //Make player (triangle) 
  triangle(t, 270, r, 280, l, 280);
}

//respond to key pressed 
void keyPressed() {

  if (key == 'a') {
    print("a was pressed");
  }
  if (key == 'd') {
    print("d was pressed");
  }
}