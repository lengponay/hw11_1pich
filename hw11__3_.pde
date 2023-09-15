catcat []cc;

chairchair ch1;
cloudcloud []cl;
firefire fr1 ;
greengreen[] gr ;
humanhuman hu1;
signsign sig1;
stonestone []st;
tenttent te;
treetree []tr;

void setup() {
  size (1500, 800);
  tr = new treetree[3];
  for (int i = 0; i < 3; i++) {
    tr[i] = new treetree();
  }
  te = new tenttent(1300, 500, 60);
  ch1 = new chairchair(1000, 600, 72);
  cl = new cloudcloud[5];
  for (int i = 0; i < 5; i++) {
    cl[i] = new cloudcloud();
  }
  fr1 = new firefire();
  gr = new greengreen[3];
  for (int i = 0; i < 3; i++) {
    gr[i] = new greengreen();
  }
  hu1 = new humanhuman();
  sig1 = new signsign ();
  st = new stonestone[3];
  for (int i = 0; i < 3; i++) {
    st[i] = new stonestone();
  }
  cc = new catcat[5];
  for (int i = 0; i < 5; i++) {
    cc[i] = new catcat();
  }
}
void showBack() {
  background (100);

  background (#090580); //sky
  noStroke();

  fill (#023e8a);//land
  ellipse ( 1000, 600, 2500, 700);//land

  fill (#0077b6);
  ellipse (0, 780, 1000, 650);//lake

  for (int i = 0; i < 3; i++) {
    tr[i].tree();
  }

  te.tent();
  ch1.chair();
  for (int i = 0; i < 5; i++) {
    cl[i].cloud();
  }
  fr1.fire();
  for (int i = 0; i < 3; i++) {
    gr[i].green1();
  }
  hu1.human();
  sig1.sign();
  for (int i = 0; i < 3; i++) {
    st[i].stone();
  }

  textSize(50);
  fill (255, 0, 0);
  text ("DON'T CROSS THE LINE", 900, 200);
}
void draw () {
  background (#090580); //sky
  showBack();
  for (int i = 0; i < 5; i++) {
    cc[i].cat();
    cc[i].cccat();
  }
}

class catcat {
  catcat() {
    x = random(width);
    y = random(height);
    d = random(40, 60);
    vx = random(3, 6);
    vy = random(3, 6);
  }
  catcat(float a, float b, float c) {
    x = a;
    y = b;
    d = c;
    vx = random(2, 4);
    vy = random(2, 4);
  }
  float x, y, d, vx, vy;
  // member functions
  void cccat() {
    y += vy;
    x += vx;
    if (y > height || y < 0) vy = -vy;
    if (x > width || x < 0) vx = -vx;
  }

  void cat() {
    fill(190);
    strokeWeight(d*0.05);
    //tight
    curve ( x+d*0.7, y+1.13*d, x-d*0.5, y+1.0*d, x-d*0.6, y+1.2*d, x-d*0.07, y+1.2*d );
    beginShape();
    vertex(x-d*0.5, y+1.0*d );
    vertex(x, y+1.13*d );
    vertex(x, y+1.28*d );
    vertex(x-d*0.6, y+1.20*d );
    endShape ();
    //leg
    rect ( x-d*0.07, y+1.13*d, d*0.94, d*0.4, d*0.8);
    //body
    arc (x+0.4*d, y+d, 0.75*d, 1.3*d, 0.7*PI, 2.3*PI, CLOSE );
    fill (240);
    arc (x+0.4*d, y+1.1*d, 0.5*d, d, 0.7*PI, 2.3*PI, CLOSE );
    //LINE
    line ( x+0.33*d, y+1.25*d, x+0.33*d, y+1.5*d );
    line ( x+0.47*d, y+1.25*d, x+0.47*d, y+1.5*d );
    //face
    fill(190);
    rect (x, y, d*0.8, d*0.7, d*2.9, d*2.9, d*0.9, d*0.9 );
    //left ear
    beginShape();
    vertex (x+ 0.035*d, y+0.25*d);
    vertex (x, y-0.1*d);
    vertex (x+0.3*d, y+0.01*d);
    endShape();
    //right ear
    beginShape();
    vertex (x+ 0.77*d, y+0.25*d);
    vertex (x+ 0.8*d, y-0.1*d);
    vertex (x+0.5*d, y+0.01*d);
    endShape();
    //eye
    fill (0);
    noStroke ();
    circle ( x+d*0.25, y+d*0.35, d*0.18 );
    circle ( x+d*0.55, y+d*0.35, d*0.18 );
    //white
    fill (240);
    circle ( x+d*0.25, y+d*0.33, d*0.06 );
    circle ( x+d*0.55, y+d*0.33, d*0.06 );
    //nose
    fill (#370617);
    ellipse ( x+d*0.4, y+d*0.5, d*0.12, d*0.08 );
  }
}
