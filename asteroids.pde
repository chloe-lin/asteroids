//mode framework
int mode; 
final int INTRO = 0; 
final int GAME = 1; 
final int PAUSE = 2; 
final int GAMEOVER = 3; 

//keys
boolean upkey, downkey, leftkey, rightkey, spacekey; 

//ship
Ship myShip; 

//ufo
Ufo myUfo;
ArrayList<Bullet> myBullets; 
ArrayList<GameObject> myObjects; 

//image
PImage nightsky;

//font
PFont badsignal;

//colours 
color grey = #6B6563; 
color robineggblue = #80E0DF; 
color babyblue = #A7CBDA; 
color lilac = #BFBFD5; 
color lavender = #CCB4C4; 

void setup() { 
  size(800, 600); 

  mode = GAME; 

  nightsky = loadImage("nightsky.png"); 
  image(nightsky, 0, 0, width, height);

  badsignal = createFont("badsignal.otf", 200);

  myShip = new Ship(); 
  myObjects = new ArrayList<GameObject>(); 
  myObjects.add(myShip); 
  myObjects.add(new Asteroid()); 
  myObjects.add(new Asteroid()); 
  myObjects.add(new Asteroid()); 
  myUfo = new Ufo(); 
  myObjects.add(myUfo);
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
