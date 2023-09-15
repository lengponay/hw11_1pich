class signsign {
  signsign() {
    x = random(300,400);
    y = random(300,400);
    d = random(50,80);
  }
  signsign(float a,float b,float c) {
    x = a;     y = b;    d = c;
  }
  float x, y, d;
  void sign () {
  strokeWeight(d*0.02);
  fill (#A47551);
  rect ( x-d, y, d*1.6, d*0.8);
  rect ( x-d*0.3, y+d*0.8, d*0.2, d);

  fill( 0);
  textSize( d*0.16);
  text (" warning-dangerzone!! ", x-d*0.95, y+d*0.45);
}
}
