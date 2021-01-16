

void play() {//lllllllllllllllllllllllllllllllllllll


strokeWeight(2);
stroke(#DEBF0D);



  background (103, 79, 54);
  

  
  fill (142,107,72);
  rect (100, 100, 600, 600);
  


  fill (255);
  strokeWeight (2);



  line   (0, 0, 100, 100);
  line   (700, 700, 800, 800);
  line   (0, 800, 100, 700);
  line   (800, 0, 700, 100);

  
  fill(0);
 
  
text ("PRESS 'm' TO SEE MAP", 650, 50);





  //''''''''''''''''''''''''''''''''''''

  if (n) ellipse (width/2, 50, 200, 100);
  if (e) ellipse (750, width/2, 100, 200);
  if (s) ellipse ( width/2, 750, 200, 100);
  if (w) ellipse (50, width/2, 100, 200);

  //''''''''''''''''''''''''''''''''''''

  int i = 0;

  while (i < bulletList.size()) { 
    Bullet b = bulletList.get(i);
    if ( b.alive == true) {
      b.show();
      b.act();
      i++;
    } else {
      bulletList.remove(i);
    }
  }

  //''''''''''''''''''''''''''''''''''''''

  i = 0;

  while (i < ebulletList.size()) { 
    eBullet eb = ebulletList.get(i);
    if ( eb.alive == true) {
      eb.show();
      eb.act();
      i++;
    } else {
      ebulletList.remove(i);
    }
  }

  //''''''''''''''''''''''''''''''''''''''


  int j = 0;

  while (j < enemyList.size()) { 
    Enemy myEnemy = enemyList.get(j);
    if ( myEnemy.hp > 0) {
      if (myEnemy.myRoomx == roomx && myEnemy.myRoomy == roomy) {
        myEnemy.show();
        myEnemy.act();
      }
      j++;
    } else {
      enemyList.remove(j);
    }
  }
  
  
   fill(#F131FF);
 if (j==0){
  text ("PORTAL IS OPEN. Head to the centre room.",width/2, 120);
}

  
  if (roomx==4 && roomy==5){//-----------------------  
  noStroke();
  
 
  
  
  
  if (j==0){
    
    
  fill(#F131FF);
  rect(290,290,210,210);
  fill(0);
  text ("PORTAL",290+100, 290+100);
    
    
   if (myHero.x > 300 && myHero.x < 500 && myHero.y > 300 && myHero.y < 500) {
      
    mode = gamewon;

    }
  }
  
  
   fill(0);
  rect(290,290,210,20);
  rect(290,490,210,20);
  rect(290,290,20,210);
  rect(490,290,20,220);
  
  
}//------------------------------------------------


  //''''''''''''''''''''''''''''''''''''''

  if ( myHero.alive == true) {
    myHero.show();
    myHero.act();
  }
}//lllllllllllllllllllllllllllllllllllllllllllllllll


void playClicks () {////////////////////////////////
  bulletList.add(new Bullet());
}///////////////////////////////////////////////////


void switchRoom() {//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  n = e = s = w = false;

  bulletList = new ArrayList <Bullet>();
  ebulletList = new ArrayList <eBullet>();

  color here  = map.get (roomx, roomy);
  color north = map.get (roomx, roomy - 1);
  color east  = map.get (roomx + 1, roomy); 
  color south = map.get (roomx, roomy + 1);
  color west  = map.get (roomx - 1, roomy);

  if (north != white) n = true;
  if (east != white) e = true;
  if (south != white) s = true;
  if (west != white) w = true;
}
