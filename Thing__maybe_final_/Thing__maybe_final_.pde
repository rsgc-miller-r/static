//By Rob 'Gorrilla Ribs' Miller
//Prog's dank as swain's raven

float ex = 0;
float why = 0;
//'scales' the noise by changing the perlin interval
float noiseScale=0.01;
float scaleNoise=0.01;


void setup(){
 //make canvas
  size(1000, 1000);
  
}

void draw() {
  //finds angle of mouse in relation to the centre, 
  //and outputs a radian
  float tan = atan2(mouseX, mouseY);
  background(0);
  if(mousePressed) {
  println(tan);
  }
}
