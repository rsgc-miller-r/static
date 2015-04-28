//By Rob 'Gorrilla Ribs' Miller
//Prog's dank as swain's raven
//almust dank as shrek's dank kush, but cant be cuz shrek's dank kush

float ex = 0;
float why = 0;
float noiseScale=0.01;
float scaleNoise=0.01;

void setup(){
 
  size(1000, 1000);
}

void draw() {
  background(255);
  //up/down, sik color
 //ex = ex + 5;
  //for (int x=0; x < width; x++) {
    //float valNoise = noise((500+x)*scaleNoise, ex*scaleNoise);
    //stroke(valNoise*random(255), random(0), random(255));
   // line(x, -500+valNoise*80, x, height);
 // }
  //sideways?
  ex = ex +5;
  why = why + 5;
   for (int x=0; x < height; x++) {
    float valNoise = noise((500+x)*scaleNoise, ex*scaleNoise);
    stroke(valNoise*random(255), random(0), random(255));
    line(valNoise*80 + width, x, 0, x);
  }
  //int[] intensity = new int[1];
  //up/down, cyan
  //if (mouseX ) {
    //noiseScale = noiseScale + 0.01;
  //}

  ex = ex + 5;
  for (int x=0; x < width; x++) {
    float noiseVal = noise((500+x)*noiseScale, ex*noiseScale);
    stroke(noiseVal*255, 255, 255);
    line(x, 500+noiseVal*80, x, height);
  }
     if(mousePressed) {
  println(atan2(mouseX, mouseY));
}
}
