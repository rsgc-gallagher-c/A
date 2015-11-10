class Player { 

  //Global Variables 
  float t; //top of triangle 
  float r; //right of triangle 
  float l; // left of triangle 

  //constructor (like setup - runs once)
  Player (float t_, float r_, float l_) {
    t = t_;
    r = r_;
    l = l_;
  }

  void update() {
    if (l>80) {
      textSize(80);
      text("GAME OVER", 285, 100);
      noLoop();

      if (r>120) {
        textSize(80);
        text("GAME OVER", 285, 100);
        noLoop();
      }