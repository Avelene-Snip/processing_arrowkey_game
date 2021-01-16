class GIANT extends Enemy {////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  
  GIANT(int _myRoomx, int _myRoomy) {//eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

   super(_myRoomx, _myRoomy);
    
    d = 150;
    
    speed = 3;
    
    hp = 2;
    
     x = 400;
    y = 400;
    
  }//eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee



  void show() {//ssssssssssssssssssssssssssssssssssssss

    fill (purple);
    stroke (yellow);
    ellipse (x, y, 200, 200);

    fill (0);
    textSize (20);
    text ( hp, x, y);
    
  }//ssssssssssssssssssssssssssssssssssssssssssssssssss



  void act() {//.......................................

     PVector direction = new PVector (myHero.x-x, myHero.y-y);
    direction.setMag (speed); 

    vx = direction.x;
    vy = direction.y;

    x = x + vx;
    y = y + vy;

    collisionCheck();
    
    Ocollisioncheck ();
    
  }//..................................................

}///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
