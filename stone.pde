class stonestone {
  stonestone() {
    x = random(150,300);
    y = random(300,400);
    d = random(60, 80);
  }
  stonestone(float a,float b,float c) {
    x = a;     y = b;    d = c;
  }
  float x, y, d;
  void stone () {
  stroke(0);
  strokeWeight(0.04*d);
  strokeJoin(ROUND);
  fill(#737e8c);
  ellipse ( x-d*0.9, y, d, d/2);
  ellipse ( x-d*1.15, y+d*0.3, d*0.4, d*0.5);
  arc(x-d*2.2, y+d*0.3, d*1.7, d*1.5, -PI, 0, CLOSE);
}
}
