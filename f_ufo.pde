

class Ufo extends GameObject { 

  Ufo() { 
    lives = 1; 
    int u = int(random(0, 4));
    int x, y; 
    
    location = new PVector(100, 100);
    velocity = new PVector(0, 1);
    
    //if (u == 0) { 
    //  y = 0; 
    //  x = int(random(0, 400)); 
    //  location = new PVector (x, y);
    //  velocity = new PVector(0, 1);
    //}

    //if (u == 1) { 
    //  x = width; 
    //  y = int(random(0, 300)); 
    //  location = new PVector (x, y);
    //  velocity = new PVector(-1, 0);
    //}

    //if (u == 2) { 
    //  y = height; 
    //  x = int(random(0, 400)); 
    //  location = new PVector (x, y);
    //  velocity = new PVector(0, -1);
    //}

    //if (u == 3) { 
    //  x = width; 
    //  y = int(random(0, 300)); 
    //  location = new PVector (x, y);
    //  velocity = new PVector(1, 0);
    //}
  }


  void show() { 
    noFill(); 
    strokeWeight(10);
    square(100, 100, 100);
  }

  void act() { 
    //super.act();
     location.add(velocity); //nullpointerexception
  }
}
