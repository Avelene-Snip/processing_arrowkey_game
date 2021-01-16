/////////// ROUGE
//variables......................................


PFont brag;
PFont curlz;
PFont cop;

PImage map;


int i = 0;
int q = 0;
String zero;


int roomx, roomy, mapWidth, mapHeight;
int mode = 1;

final int intro     = 1;
final int play      = 2;
final int pause     = 3;
final int gameover  = 4;
final int gamewon   = 5;
final int error     = 6;
final int MAP       = 7;



boolean n, e, s, w;
boolean akey, dkey, wkey, skey, Akey, Dkey, Wkey, Skey;


color purple = #490AD3;
color pink   = #BD1550;
color orange = #E97F02;
color yellow = #F8CA00;
color green  = #8A9B0F;
color black  = #000000;
color white  = #FFFFFF;


ArrayList <Bullet> bulletList;
Bullet b;

ArrayList <eBullet> ebulletList;
eBullet eb;

ArrayList <Enemy> enemyList;
Enemy myEnemy;


Hero myHero;


//................................................

void setup () {///////////////////////////////////

  size (800, 800);

  roomx = 1;
  roomy = 1;

  curlz = loadFont ("CurlzMT-48.vlw");
  brag = loadFont ("Braggadocio-48.vlw");
  cop = loadFont("CopperplateGothic-Light-48.vlw");

  map = loadImage ("Map.png");
  mapWidth = map.width;
  mapHeight = map.height;

  textAlign (CENTER, CENTER);
  imageMode (CENTER);




  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''
 

 

  bulletList = new ArrayList <Bullet>();
  ebulletList = new ArrayList <eBullet>();

  enemyList = new ArrayList <Enemy>();
  enemyList.add (new Enemy       (1, 4));
  enemyList.add (new Enemy       (1, 6));
  enemyList.add (new Archer      (2, 1));
  enemyList.add (new Chaser      (2, 3));
  enemyList.add (new Archer      (2, 5));
  enemyList.add (new lazyChaser  (2, 7));
  enemyList.add (new lazyArcher  (4, 3));
  enemyList.add (new GIANT       (4, 8));
  enemyList.add (new Enemy       (6, 1));
  enemyList.add (new Chaser      (6, 3));
  enemyList.add (new Archer      (6, 5));
  enemyList.add (new Chaser      (6, 7));
  enemyList.add (new GIANT       (7, 1));
  enemyList.add (new lazyArcher  (7, 4));
  enemyList.add (new GIANT       (7, 6));



  myHero = new Hero();



  switchRoom ();
  
}/////////////////////////////////////////////////


void draw () {//=================================

  if (mode == intro) {
    intro();
  } else if (mode == play) {
    play();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == gamewon) {
    gamewon();
  } else if (mode == pause) {
    gamewon();
  } else if (mode == MAP) {
    MAP();
  } else {
    error ();
  }
}//===============================================


void keyPressed() {//++++++++++++++++++++++++++++

  if (key == 'a' || key == 'A') akey = true; 
  Akey = false;
  if (key == 'w' || key == 'W') wkey = true; 
  Wkey = false;
  if (key == 'd' || key == 'D') dkey = true; 
  Dkey = false;
  if (key == 's' || key == 'S') skey = true; 
  Skey = false;

  if ( key == 'm' || key == 'M') mode = MAP;
}//+++++++++++++++++++++++++++++++++++++++++++++++


void keyReleased() {//----------------------------

  if (key == 'a'|| key == 'A') akey = false; 
  Akey = false;
  if (key == 'w'||key ==  'W') wkey = false; 
  Wkey = false;
  if (key == 'd'|| key == 'D') dkey = false; 
  Dkey = false;
  if (key == 's'|| key == 'S') skey = false; 
  Skey = false;

  if ( key == 'n' || key == 'N') mode = play;
}//-----------------------------------------------



void mousePressed() {//***************************

  if (mode == intro) {
    introClicks ();
  } else if (mode == play) {
    playClicks();
  } else if (mode == gameover) {
    gameoverClicks();
  } else if (mode == gamewon) {
    gamewonClicks();
  } else if (mode == pause) {
    MAPClicks();
  } else {
    errorClicks ();
  }
}//************************************************
