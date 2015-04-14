//By Rob 'Gorrilla Ribs' Miller
//Prog's dank as swain's raven
//almust dank as shrek's dank kush, but cant be cuz shrek's dank kush
float ex = 0;
float why = 0;
float noiseScale=0.04;
float scaleNoise=0.01;
int rot = 0;

void setup(){
  size(1280, 800);
}

void draw() {
  rot += 1;
  if(rot == 360) {
   rot = 0; 
  }
  background(0);
  //up/down, sik color
 //ex = ex + 5;
  //for (int x=0; x < width; x++) {
    //float valNoise = noise((500+x)*scaleNoise, ex*scaleNoise);
    //stroke(valNoise*random(255), random(0), random(255));
   //line(x, -500+valNoise*80, x, height);
 //}
  //sideways?
  ex = ex +5;
  why = why + 5;
   for (int x=0; x < height; x++) {
    float valNoise = noise((500+x)*scaleNoise, why*scaleNoise);
    stroke(valNoise*random(255), random(0), random(255));
     translate(width/2, height/2);
    rotate(rot);
   line(valNoise*80 + width, x, 0, x);
  }
  //up/down, cyan
 ex = ex + 5;
  for (int x=0; x < width; x++) {
    float noiseVal = noise((500+x)*noiseScale, ex*noiseScale);
    stroke(noiseVal*0, 255, 255);
    translate(width/2, height/2);
    rotate(rot);
   line(x, 500+noiseVal*80, x, height);
  }
   
}
