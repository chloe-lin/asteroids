class Ship extends GameObject {
  
  //1. Instance variables 
  PVector direction; 
  int shotTimer, threshold; 
  
  //2. constructor(s) 
  Ship() { 
    lives = 3; 
    location = new PVector (width/2, height/2); 
    velocity = new PVector (0,0); 
    direction = new PVector (0, -0.1); 
    shotTimer = 0; 
    threshold = 60; 
  } 
  
  //3. behaviour functions 
  void show() { 
    pushMatrix(); 
    translate(location.x, location.y); 
    rotate(direction.heading()); 
    noFill(); 
    stroke(255); 
    triangle(-25, -12.5, -25, 12.5, 25, 0); 
    
    popMatrix(); 
    
  } 
  
  void act() { 
    super.act(); 
    
    shotTimer++; 
    
    //movement keyboard interactopms 
    if (upkey) { 
      velocity.add(direction);
      myObjects.add(new fire()); 
      myObjects.add(new fire()); 
      myObjects.add(new fire()); 
    }
    if (downkey) velocity.sub(direction); 
    if (leftkey) direction.rotate( - radians(5));
    if (rightkey) direction.rotate(radians(5)); 
    if (spacekey && shotTimer > threshold) { 
      myObjects.add(new Bullet()); 
      shotTimer = 0; 
    }
    if (velocity.mag() > 15) velocity.setMag(15); 
    
    if (!upkey && !downkey) velocity.setMag(velocity.mag()*1); 
       
  } 
  
}
