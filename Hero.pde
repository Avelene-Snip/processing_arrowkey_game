class Hero {

  float x, y, d, speed;

  int lives;
  int spriteNum;
  int THRESHOLD;
  int count;

  boolean alive;

  Hero() {

    spriteNum = 0;

    THRESHOLD = 20;

    count = 0;


    alive = true;

    x = width/2;
    y= width/2;

    d= 30;

    speed = 5;

    lives = 100;
  }



  void show() {

   fill(#F131FF);
    ellipse (x, y, d, d);

    fill (255);
    textSize (20);
    text ( lives, x, y + 30);
    line( x, y, mouseX, mouseY);
  }



  void act() {

    //dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd

    int i = 0;
    while (i < enemyList.size()) {//.. 

      Enemy myEnemy = enemyList.get(i);
      if (myEnemy.myRoomx == roomx && myEnemy.myRoomy == roomy) {
        if ( dist ( myEnemy.x, myEnemy.y, x, y) < myEnemy.d/2 + d/2) {

          lives--;
        }
      }

      i++;
      
    }//..

 if (lives < 1){
    mode = gameover;
  }

    //dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd



    if (akey) {
      x = x - speed; 

    }

    if (dkey) {
      x = x + speed; 

    }

    if (wkey) {
      y = y - speed; 
    }

    if (skey) {
      y = y + speed; 
    }


    if (x < 100) x = 100;
    if (x > width-100) x = width-100;
    if (y < 100) y = 100;
    if (y > width-100) y = width-100;


    if (n) checkNorthExit();
    if (e) checkEastExit();
    if (s) checkSouthExit();
    if (w) checkWestExit();

    //////////////////////////////////////////////////////

    i = 0;

    while (i < ebulletList.size()) {//.. 

      eBullet eb = ebulletList.get(i);

      if ( dist ( eb.x, eb.y, x, y) < eb.d/2 + d/2) {
        eb.alive = false;
        lives--;
      }

      i++;
    }//..
  }





  void checkNorthExit() {

    if (dist(width/2, 50, myHero.x, myHero.y) < 65) {
      roomy --;
      y = 680;
      x = width/2;
      switchRoom();
    }
  }

  void checkEastExit() {

    if (dist(750, width/2, myHero.x, myHero.y) < 65) {
      roomx ++;
      y = height/2;
      x = 120;
      switchRoom();
    }
  }

  void checkSouthExit() {

    if (dist ( width/2, 750, myHero.x, myHero.y) < 65) {
      roomy ++;
      y = 117;
      x = width/2;
      switchRoom();
    }
  }

  void checkWestExit() {

    if (dist(50, width/2, myHero.x, myHero.y) < 65) {
      roomx --;
      y = height/2;
      x = 680;
      switchRoom();
    }
  }
}
