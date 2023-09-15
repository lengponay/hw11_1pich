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
  background (100);

  background (#090580); //sky
  noStroke();

  fill (#023e8a);//land
  ellipse ( 1000, 600, 2500, 700);//land

  fill (#0077b6);
  ellipse (0, 780, 1000, 650);//lake

  tr = new treetree[3];
  for (int i = 0; i < 3; i++) {
    tr[i] = new treetree();
    tr[i].tree();
  }

  te = new tenttent(1300,500,60);
  te.tent();

  ch1 = new chairchair(1000, 600, 72);
  ch1.chair();

  cl = new cloudcloud[5];
  for (int i = 0; i < 5; i++) {
    cl[i] = new cloudcloud();
    cl[i].cloud();
  }

  cc = new catcat[5];
  for (int i = 0; i < 5; i++) {
    cc[i] = new catcat();
    cc[i].cat();
  }

  fr1 = new firefire();
  fr1.fire();

  gr = new greengreen[3];
  for (int i = 0; i < 3; i++) {
    gr[i] = new greengreen();
    gr[i].green1();
  }

  hu1 = new humanhuman();
  hu1.human();

  sig1 = new signsign ();
  sig1.sign();

  st = new stonestone[3];
  for (int i = 0; i < 3; i++) {
    st[i] = new stonestone();
    st[i].stone();
  }

  textSize(50);
  fill (255, 0, 0);
  text ("DON'T CROSS THE LINE", 900, 200);
}
