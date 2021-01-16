void intro () {

background (1000, 1000, 1000);

textSize (60);

textFont (brag);

text("rougeLike",400,350);

textFont (cop);

textSize (20);

fill(0);
text("click to start", 400, 450);


textSize (15);


text("Use the 'w,' 'a,' 's,' and 'd' arrow keys to guide your player around the screen.", 400, 470+200);
text("Use the 'm' and 'n' keys to navigave with your map.", 400, 485+200);
text("Use your mouse to aim and fire bullets by clicking.", 400, 500+200);
text("Kill all of the monsters and then travel to the center of the map to claim victory!", 400, 515+200);



//...................................................




  
}


void introClicks() {

  
  mode = play;
  
}
