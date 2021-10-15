void game() {
  background(0); 
  myShip.show(); 
  myShip.act(); 
  myUfo.show(); 
  myUfo.act(); 
  
  strokeWeight(1);
 
  
  int i = 0; 
  while (i < myObjects.size()) { 
    GameObject myObj = myObjects.get(i); 
    myObj.show(); 
    myObj.act(); 
    myUfo.show(); 
    
    if (myObj.lives == 0) { 
      myObjects.remove(i); 
    } else { 
     i++;  
    }
  }
 
 //pause button 
  stroke(0); 
  strokeWeight(5); 
  fill(babyblue);
  rect(20, 20, 100, 70);
  fill(0);
  textFont(badsignal); 
  textSize(20); 
  text("pause", 50, 60);
  
}

void gameClicks() {
  if (mouseX > 20 && mouseX < 120 && mouseY > 20 && mouseY < 90) { 
  mode = PAUSE; 
   }
} 
