boolean upkey, downkey, leftkey, rightkey, spacekey; 
Ship myShip; 
ArrayList<Bullet> myBullets; 
ArrayList<GameObjects> myObjects; 

void setup() { 
  size(800, 600); 
  imageMode(CENTER); 
  myShip = new Ship(); 
  myObjects = new ArrayList<GameObject>(); 
}

void draw() {
  background(0); 
  myShip.show(); 
  myShip.act(); 
  
  int i = 0; 
  while (i < myObjects.size()) { 
    GameObject b = myObjects.get(i); 
    b.show(); 
    b.act(); 
    i++; 
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
