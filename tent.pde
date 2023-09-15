class tenttent {
  tenttent(float a,float b,float c) {
    x = a;     y = b;    d = c;
  }
  float x, y, d;
  void tent() {
    fill (#faa307);
    stroke (0);
    strokeJoin(ROUND);
    strokeWeight(d*0.1);
    //FRONT
    beginShape ();
    vertex(x, y );
    vertex(x-d*1.5, y+d*2.6);
    vertex(x+d*1.5, y+d*2.6);
    endShape(CLOSE);
    //SIDE
    fill (#f48c06);
    beginShape ();
    vertex(x, y );
    vertex(x+d*1, y );
    vertex(x+d*2.8, y+d*2.6);
    vertex(x+d*1.5, y+d*2.6);
    endShape(CLOSE);
    //inside
    fill (70);
    beginShape ();
    vertex(x, y );
    vertex(x, y+d*2.6 );
    vertex(x-d*0.6, y+d*2.6 );
    vertex(x, y+d*1.2 );
    endShape(CLOSE);
    //line on top
    //font on top
    line (x, y, x-d*0.2, y-d*0.3 );
    line (x, y, x+d*0.2, y-d*0.3 );
    //behind on top
    line (x+d*1, y, x+d*0.8, y-d*0.3 );
    line (x+d*1, y, x+d*1.2, y-d*0.3 );
  }
}
