//Carlyle Gallagher 
//Game Project 

//global variables 
float s1; //speed of the triangle 


    void setup() {

      //Make canvas 
      size(200, 300);

      //define a,b,c
      t = 100; 
      r = 108;
      l = 92;
      s1 = 0;
    }

    void draw() {

      // background clears each time the program loops
      background(255);

      //Make the colour of the player (triangle) 
      fill(5, 5, 5);

      //Make player (triangle) 
      triangle(t, 270, r, 280, l, 280);

      // Move the player 
      t = t-s1;
      r = r-s1;
      l = l-s1;

      //Left side line
      line(80, 280, 80, 100);

      //Right side line 
      line( 120, 280, 120, 100);
    }

    //respond to key pressed 
    void keyPressed() {

      if (key == 'a') {
        print("a was pressed");
        s1= +1;
      }
      if (key == 'd') {
        print("d was pressed");
        s1= -1;
      }
    }

    void keyReleased() {
      s1 = 0;
    }