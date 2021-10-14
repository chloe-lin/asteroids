void gameover() {
  
  if (lives == 0) { 
    fill(lilac); 
    text("you lost!", 80, 100); 
  } else { 
    fill(lilac); 
    text("you won!", 80, 100); 
  }
  
}

void gameoverClicks() {
  mode = INTRO; 
} 
