//background image and next image
PImage jord;
PImage jor;
PImage face;
float pos_x, pos_y = 0; // allow face to start at 0,0
float velocity_x, velocity_y = 3; //velocity default 4, 4
float face_radius = 50; //set radius of face


// size of the ellipses that are going to cover original image
int radius = 20;

void setup(){
  
  size(600, 800);
  jord = loadImage("jord.jpeg"); 
  jor = loadImage("jor.jpg");
  face = loadImage("face-transparent.png");
  imageMode(CENTER);
  background(jord);
  noStroke();
}

void draw(){
  int x_loc = int(random(jor.width)); // random value on x axis
  int y_loc = int(random(jor.height)); // random value on y axis
  int point = x_loc + (y_loc * jor.width); // determines the point to then draw ellipse
  
  
  float r = red(jor.pixels[point]); 
  float g = green(jor.pixels[point]);
  float b = blue(jor.pixels[point]);
  x_loc = int(map(x_loc, 0, jor.width, 0, width)); // match up the values on the screen
  y_loc = int(map(y_loc, 0, jor.height, 0, height)); // match up the y value on the screen
  
  
  fill(r, g, b, 50); //fill ellipse with rgb values and make it a lil bit transparent
  ellipse(x_loc, y_loc, radius, radius); // draw the ellipses
  
  
  

  
}
