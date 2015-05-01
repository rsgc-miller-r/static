import processing.sound.*;

//By Rob 'Gorrilla Ribs' Miller
//Prog's dank as swain's raven

//x any y variables
float ex = 0;
float why = 0;
int timer = 0;
SoundFile swamp;


void setup() {
  //make canvas
  //use 1000x667 if shrek, 1280x801 if darkhour
  size(1000, 667);
  frameRate(30);
  // size(1280, 801);
  //start up sound library
  swamp=new SoundFile(this, "swamp.mp3");
}

void draw() {
  //finds angle of mouse in relation to the centre, 
  //and outputs the tangent
  float tan = atan2(mouseY-height/2, mouseX-width/2);
  timer -= 1;
  //'scales' the noise by changing the perlin interval
  float noiseScale=tan/10;
  background(255);
  //show the tangent at a given position if mouse is pressed
  if (mousePressed) {
    println(tan);
  }
  //visualize perlin noise at line
  ex = ex + 5;
  for (int x=0; x < width; x++) {
    //creating random #s based on perlin interval
    float noiseVal = noise((500+x)*noiseScale, ex*noiseScale);
    //colour of the noise up to the line
    stroke(noiseVal*random(0), random(255), random(0));
    //the line the noise visualizes at
    line(x, -500+noiseVal*80, x, height);
  }
  //load image of shrek/ the dark hour
  PImage img;
  //img = loadImage("darkhour.jpg");
  img = loadImage("Shrek.jpg");
  image(img, 0, 0);
  tint(255, tan*100);
  //just a little somthing extra
  if (tan*100 > 250) {
    if (timer < 1) {
      timer = 30 * 111;
      swamp.play();
    }
    
    noLoop();
    loop();
    frameRate(100);
    tint(random(255), random(255), random(255));
    println("TOO DANK");
    println("TIMER: " + timer);
    textSize(85);
    text("TOO DANK", width/2, height/2);
    fill(232, 14, 228);
  } else {
    //swamp.stop();
  }
}
