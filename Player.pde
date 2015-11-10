class Player { 

  //Global Variables 
  float t; //top of triangle 
  float r; //right of triangle 
  float l; // left of triangle 
  float s1; //speed of the triangle 

  //constructor (like setup - runs once)
  Player (float t_, float r_, float l_) {
    t = t_;
    r = r_;
    l = l_;
    s1 = 0;
  }

  void update() {

    //Make the colour of the player (triangle) 
    fill(5, 5, 5);

    //Make player (triangle) 
    triangle(t, 270, r, 280, l, 280);

    // Move the player 
    t = t-s1;
    r = r-s1;
    l = l-s1;


    //end game 
    if (l>80) {
      textSize(80);
      text("GAME OVER", 285, 100);
      noLoop();

      if (r>120) {
        textSize(80);
        text("GAME OVER", 285, 100);
        noLoop();
      }
    }
  }
  //moving the player with the keys 
  void sets1(float newS1_) {
    s1 = newS1_;
  }
}