class cloudcloud {
  cloudcloud(){
    x = random(width);
    y = random(200,380);
    d = random(70, 100);
  }
  cloudcloud(float a, float b, float c) {
    x = a;
    y = b;
    d = c;
   }
  float x, y, d;
  void cloud () {
    //cloud
    fill (255);
    noStroke();
    circle (x-1.8*d, y-2.4*d, 1*d);
    circle (x-2.4*d, y-2.25*d, 0.7*d);
    circle (x-1.2*d, y-2.25*d, 0.7*d);
    circle (x-0.75*d, y-2.18*d, 0.5*d);
    fill (255);
  }
}class treetree {
  treetree() {
    x = random(300,1000);
    y = random(280,320);
    d = random(40,60);
  }
  treetree(float a,float b,float c) {
    x = a;     y = b;    d = c;
  }
  float x, y, d;
  void tree() {
  
    strokeWeight(d*0.07);
    stroke (0);
    //brown
    fill(84, 11, 14);
    rect (x+d*0.75, y, d*0.3, d*1.3 );
    // green
    fill (0, 180, 0);
    circle (x, y, d);
    circle (x+d*0.85, y, d);
    circle (x+d*1.75, y, d);
    circle (x+d*0.25, y-d*0.7, d);
    circle (x+d*0.95, y-d*1, d*1.1);
    circle (x+d*1.6, y-d*0.6, d);
  
    noStroke();//cover circle in tree
    rect ( x+d*0.2, y-d*1.15, d*1.2, d );
    rect (x-d*0.15, y-d*0.6, d*2.15, d*0.8);
  }
}
