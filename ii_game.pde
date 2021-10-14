void game() {
  background(0); 
  myShip.show(); 
  myShip.act(); 
  
  strokeWeight(1);
 
  
  int i = 0; 
  while (i < myObjects.size()) { 
    GameObject myObj = myObjects.get(i); 
    myObj.show(); 
    myObj.act(); 
    
    if (myObj.lives == 0) { 
      myObjects.remove(i); 
    } else { 
     i++;  
    }
  }
 
 if (lives == 0) mode = GAMEOVER;
  
}

void gameClicks() {
  mode = PAUSE; 
} 
