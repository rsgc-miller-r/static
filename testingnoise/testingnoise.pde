void setup(){
  size(1280, 800);
}

float noiseScale=0.02;

void draw() {
  background(0);
  for (int x=0; x < width; x++) {
    float noiseVal = noise((500+x)*noiseScale, mouseY*noiseScale);
    stroke(noiseVal*255);
    line(x, 500+noiseVal*80, x, height);
  }
}
