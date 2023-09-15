class humanhuman {
  humanhuman() {
    x = random(1000,1300);
    y = random(500,550);
    d = random(70,100);
  }
  humanhuman(float a, float b, float c) {
    x = a;
    y = b;
    d = c;
  }
   float x, y, d;
  void human() {
    strokeWeight(d*0.03);
    strokeJoin(ROUND);
    stroke (0);
    fill (#fed9b7);//skin
    rect (x, y, d*0.5, d*0.5, d*0.5 );//face
    beginShape ();//neck
    vertex(x+d*0.15, y+d*0.5);
    vertex(x+d*0.13, y+d*0.7);
    vertex(x+d*0.37, y+d*0.7);
    vertex(x+d*0.35, y+d*0.5);
    endShape (CLOSE);
    fill ( 250, 130, 130);
    beginShape ();//dresas
    vertex ( x+d*0.13, y+d*0.57);
    vertex ( x-d*0.01, y+d*0.6);
    vertex ( x-d*0.08, y+d*0.9);
    vertex ( x+d*0.06, y+d*0.93);
    vertex ( x+d*0.13, y+d*0.7);
    vertex ( x+d*0.04, y+d*1.4);
    vertex ( x+d*0.50, y+d*1.4);
    vertex ( x+d*0.38, y+d*0.7);
    vertex ( x+d*0.45, y+d*0.93);
    vertex ( x+d*0.60, y+d*0.9);
    vertex ( x+d*0.50, y+d*0.6);
    vertex ( x+d*0.35, y+d*0.55);
  
    endShape ();
  }
  }
