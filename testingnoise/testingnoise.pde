//By Rob 'Gorrilla Ribs' Miller
//Prog's dank as swain's raven
float ex = 0;
float why = 0;
float noiseScale=0.9;
float scaleNoise=0.01;
void setup(){
  size(1280, 800);
}

void draw() {
  background(255);
 ex = ex + 5;
  for (int x=0; x < width; x++) {
    float valNoise = noise((500+x)*scaleNoise, ex*scaleNoise);
    stroke(valNoise*random(255), random(0), random(255));
    line(x, -500+valNoise*80, x, height);
  }
  ex =ex +5;
   for (int y=0; y < height; y++) {
    float valNoise = noise((500+y)*scaleNoise, ex*scaleNoise);
    stroke(valNoise*random(255), random(0), random(255));
    line(y, -500+valNoise*80, y, width);
  }
  ex = ex + 5;
  for (int x=0; x < width; x++) {
    float noiseVal = noise((500+x)*noiseScale, ex*noiseScale);
    stroke(noiseVal*0, 255, 255);
    line(x, 500+noiseVal*80, x, height);
  }
   
}
