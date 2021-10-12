int mode; 
final int INTRO = 0; 
final int GAME = 1; 
final int PAUSE = 2; 
final int GAMEOVER = 3; 

boolean upkey, downkey, leftkey, rightkey, spacekey; 
Ship myShip; 
ArrayList<Bullet> myBullets; 
ArrayList<GameObject> myObjects; 

void setup() { 
  size(800, 600); 
  
  mode = INTRO; 
  
  imageMode(CENTER); 
  rectMode(CENTER); 
  
  myShip = new Ship(); 
  myObjects = new ArrayList<GameObject>(); 
  myObjects.add(myShip); 
  myObjects.add(new Asteroid()); 
  myObjects.add(new Asteroid()); 
  myObjects.add(new Asteroid()); 
}

void draw() {
  background(0); 
  myShip.show(); 
  myShip.act(); 
  
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
}

void keyPressed() {
  if (keyCode == UP)     upkey = true; 
  if (keyCode == DOWN)   downkey = true; 
  if (keyCode == LEFT)   leftkey = true; 
  if (keyCode == RIGHT)  rightkey = true; 
  if (keyCode == ' ')    spacekey = true; 
}

void keyReleased() { 
  if (keyCode == UP)     upkey = false; 
  if (keyCode == DOWN)   downkey = false; 
  if (keyCode == LEFT)   leftkey = false; 
  if (keyCode == RIGHT)  rightkey = false; 
  if (keyCode == ' ')    spacekey = false;
}
