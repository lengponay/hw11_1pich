catcat c1, c2, c3;
chairchair ch1;
cloudcloud cl1, cl2, cl3;
firefire fr1 ;
greengreen gr1,gr2 ,gr3 ;
humanhuman hu1;
signsign sig1, sig2;
stonestone st1, st2;
tenttent te1,te2;
treetree tr1, tr2 ,tr3;

void setup() {

  size (1500, 800);
  background (100);
     
  background (#090580); //sky
  noStroke();
   
  fill (#023e8a);//land
  ellipse ( 1000,600,2500,700);//land
  
  fill (#0077b6);
  ellipse (0 , 780 , 1000 , 650);//lake
   
 
  
  tr1 = new treetree(400,300,50);
  tr2 = new treetree(580,280,50);
  tr3 = new treetree();
  tr1.tree();
  tr2.tree();
  tr3.tree();
 
  te1 = new tenttent(1250,400,80);
  te2 = new tenttent(1400,500,50);
  te1.tent();
  te2.tent();

  ch1 = new chairchair(1000, 600, 72);
  ch1.chair();

  c1 = new catcat(750, 500, 72);
  c2 = new catcat();
  c3 = new catcat();
  c1.cat();
  c2.cat();
  c3.cat();

  cl1 = new cloudcloud(800, 302, 72);
  cl2 = new cloudcloud();
  cl3 = new cloudcloud();
  cl1.cloud();
  cl2.cloud();
  cl3.cloud();

  fr1 = new firefire();
  fr1.fire();

  gr1 = new greengreen();
  gr2 = new greengreen();
  gr3 = new greengreen();
  gr1.green1();
  gr2.green1();
  gr3.green1();

  hu1 = new humanhuman();
  hu1.human();

  sig1 = new signsign ();
  sig1.sign();
  
  st1 = new stonestone ();
  st1.stone ();
  
  textSize(50);
  fill (255,0,0);
  text ("DON'T CROSS THE LINE",900,200);
  
}
