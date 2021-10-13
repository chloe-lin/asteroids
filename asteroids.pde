int mode; 
final int INTRO = 0; 
final int GAME = 1; 
final int PAUSE = 2; 
final int GAMEOVER = 3; 

boolean upkey, downkey, leftkey, rightkey, spacekey; 
Ship myShip; 
ArrayList<Bullet> myBullets; 
ArrayList<GameObject> myObjects; 

PImage nightsky;
PFont badsignal;

void setup() { 
  size(800, 600); 
  
  mode = INTRO; 
  
  nightsky = loadImage("nightsky.png"); 
  image(nightsky, width, height);
  
  badsignal = createFont("badsignal.otf", 200);
 
  rectMode(CENTER); 
  
  myShip = new Ship(); 
  myObjects = new ArrayList<GameObject>(); 
  myObjects.add(myShip); 
  myObjects.add(new Asteroid()); 
  myObjects.add(new Asteroid()); 
  myObjects.add(new Asteroid()); 
}

void draw() {
  
   if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) { 
    pause(); 
  } else if (mode == GAMEOVER) {
    gameover(); 
  } else { 
    println("Error: Mode = " + mode); 
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
