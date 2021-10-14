
void intro() {
  //background(255); 
  fill(255);
  textSize(50);
  textFont(badsignal);
  fill(lavender);
  text("asteroids", 30, 200);
  
  
  stroke(0); 
  strokeWeight(5); 
  rect(300, 300, 200, 100); 
  fill(0);
  textSize(30); 
  text("start", 375, 350);
  
  image(nightsky, width, height);
  
}


void introClicks() {
   if (mouseX > 300 && mouseX < 500 && mouseY > 300 && mouseY < 400) { 
  mode = GAME; 
   }
} 
