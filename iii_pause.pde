void pause() {
  fill(babyblue);
  textSize(80); 
  text("p a u s e!", 300, 300); 
  
  stroke(0); 
  strokeWeight(5); 
  fill(babyblue);
  rect(20, 20, 100, 70);
  fill(0);
  textFont(badsignal); 
  textSize(20); 
  text("pause", 50, 60);
  
}

void pauseClicks() {
 if (mouseX > 20 && mouseX < 120 && mouseY > 20 && mouseY < 90) { 
  mode = GAME; 
   }
}
