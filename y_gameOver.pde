void gameover () {/////////////////////////////////////////////////////////////////////////////////////

  
  textSize (60);

textFont (brag);

  background (0);


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
  
  fill (255, 0,0);
  
  text ( "GAME OVER", 400, 350);
  
  textFont (cop);

textSize (20);

  text(  "click to restart", 400, 400);
  
}////////////////////////////////////////////////////////////////////////////////////




void gameoverClicks () {/////////////////////////////////////////////////////////////

  mode = 1;
}////////////////////////////////////////////////////////////////////////////////////
