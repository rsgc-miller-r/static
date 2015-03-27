void setup(){
  size(1280, 800);
  background(255, 255, 0);
  frameRate(4000);
}



void draw(){
  float xr = random(0, 1280);
  float yr = random(0, 800);
  float statcol = random(0, 255);
  noStroke();
  fill(statcol);
  ellipse(xr, yr, 2, 2);
}  


  
