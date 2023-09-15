class greengreen {
  greengreen() {
    x = random(100,350);
    y = random(580,740);
    d = random(50,60);
  }
  greengreen(float a, float b, float c) {
    x = a;
    y = b;
    d = c;
  }
  float x, y, d;
  void green1 () {
    fill(0, 180, 0);
    strokeWeight(0.005*d);
    stroke(0);
    arc (x-d*2, y+d, d*2, d*0.8, 1*PI/6, 10.5*PI/6, PIE);
  }
  }
