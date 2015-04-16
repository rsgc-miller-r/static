//Prog by Rob 'Gorrilla Ribs' Miller
//it's dank as shrek's kush
//illuminati = confirmed
int x = 0;
int [] y = {50,150,250,350,450,550,650,750,850,50,150,250,350,450,550,650,750,850,50,150,250,350,450,550,650,750,850,50,150,250,350,450,550,650,750,850,50,150,250,350,450,550,650,750,850,50,150,250,350,450,550,650,750,850,50,150,250,350,450,550,650,750,850, 50,150,250,350,450,550,650,750,850};
float [] rancol = {random(0,150), random(0,150), random(0,150)};
float ex = 0;
float why = 0;
float noiseScale=0.04;
float scaleNoise=0.01;

void setup(){
  size(1280, 800);

for(int f = 0; f < y.length; f++) { 
  y[f] = f*15;
}

  frameRate(4000000);
}

void draw(){
  background(#F5E400);
  noStroke();
  fill(rancol[1]);
  x=x+10;
  int pomme = 0;
  while (pomme < y.length) {
    ellipse(random(width),y[pomme], 5, 5);
    pomme = pomme + 1;
  }

 if(x>=width){
    x=0;
  }
  
}  


  
