class fire extends GameObject { 
  
  int t; //transparency 
  PVector nudge; 
  
  fire() { 
    lives = 1; 
    size = int(random(5, 12)); 
    t = int(random(200, 255)); 
    location = myShip.location.copy(); 
    nudge = myShip.direction.copy(); 
    nudge.rotate(PI); 
    nudge.setMag(30); 
    location.add(nudge); 
    velocity = myShip.direction.copy(); 
    velocity.rotate(PI+random(-1, 1)); 
    velocity.setMag(5); 
  } 
  
  void show() { 
    noStroke(); 
    fill(255, 0, 0, t); 
    square(location.x, location.y, size); 
  } 
  
  void act() { 
    super.act(); 
    t = t - 15; 
    if (t <= 0) lives = 0; 
  }
} 
