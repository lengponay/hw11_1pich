class chairchair {
  chairchair(float a, float b, float c) {
    x = a;
    y = b;
    d = c;
  }
  float x, y, d;
  void chair () {
    fill(#A47551);
    strokeWeight(0.015*d);
    rect (x-d*2, y+d, d*2, d/2);
    fill(#D0B49F);
    ellipse( x-d*1.97, y+d*1.25, d*0.2, d*0.5); //1
    ellipse( x+d*0.03, y+d*1.25, d*0.2, d*0.5); //2
    fill(#F4EBD0);
    ellipse( x-d*1.97, y+d*1.25, d*0.05, d*0.2);
    ellipse( x+d*0.03, y+d*1.25, d*0.05, d*0.2);
    fill(0);
    ellipse( x-d, y+d*1.15, d*1.2, 0); //line0
    ellipse( x-d, y+d*1.3, d, 0); //line1
  }
}
