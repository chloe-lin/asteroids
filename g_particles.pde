class particle extends GameObject { 
  
  int t; //transparency 
  
  particle(float x, float y) { 
    lives = 1; 
    size = int(random(1, 20)); 
    t = int(random(200, 255)); 
    location = new PVector (x, y); 
    velocity = new PVector (0, 1); 
    velocity.rotate( random(0, TWO_PI)); 
  } 
  
  void show() { 
    noStroke(); 
    fill(255, t); 
    square(location.x, location.y, size); 
  } 
  
  void act() { 
    super.act(); 
    t = t - 15; 
    if (t <= 0) lives = 0; 
  }
}
