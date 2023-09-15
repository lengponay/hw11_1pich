class firefire  {
  firefire() {
    x = random(900,1000);
    y = random(500,600);
    d = random(70,80);
  }
  firefire(float a, float b, float c) {
    x = a;
    y = b;
    d = c;
  }
   float x, y, d;
   void fire () {

  strokeWeight(d*0.2);
  stroke(0);
  line( x-0.5*d, y+0.3*d, x+0.5*d, y+0.7*d );
  line( x+0.5*d, y+0.3*d, x-0.5*d, y+0.7*d );
  //fire
  stroke (0);
  fill(#f48c06);
  strokeWeight(d*0.07);
  strokeJoin(ROUND);
  //out
  circle ( x, y, d );
  beginShape ();
  vertex ( x-0.45*d, y-0.2*d);
  vertex ( x, y-1.1*d);
  vertex ( x+0.47*d, y-0.2*d);
  endShape();
  //in
  fill(#dc2f02);
  circle ( x, y+0.15*d, 0.6*d );
  beginShape ();
  vertex ( x-0.27*d, y+0.02*d);
  vertex ( x, y-0.5*d);
  vertex ( x+0.28*d, y+0.02*d);
  endShape();
  }
}
