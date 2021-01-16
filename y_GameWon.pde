void gamewon () {

  background (#FF9BE1);



  roomx = 1;
  roomy = 1;



  map = loadImage ("Map.png");
  mapWidth = map.width;
  mapHeight = map.height;



  textAlign (CENTER, CENTER);
  imageMode (CENTER);



  bulletList = new ArrayList <Bullet>();
  ebulletList = new ArrayList <eBullet>();

  enemyList = new ArrayList <Enemy>();
  enemyList.add (new Enemy       (2, 1));
  enemyList.add (new Chaser      (2, 2));
  enemyList.add (new Archer      (2, 3));
  enemyList.add (new lazyChaser  (2, 4));
  enemyList.add (new lazyArcher  (2, 5));
  enemyList.add (new lazyArcher  (2, 6));
  enemyList.add (new Chaser      (2, 7));

  myHero = new Hero();

  switchRoom ();

  fill (255, 0, 0);
  textSize (60);
  textFont (curlz);
  text ( "YOU WIN", 400, 350);

  textFont (cop);
  textSize (20); 
  text(  "click to restart", 400, 400);
}


void gamewonClicks () {


  mode = 1;
}
