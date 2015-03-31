//it's dank
int x = 0;
int [] y = {50,150,250,350,450, 550, 650, 750, 850};


void setup(){
  size(1280, 800);
 
  frameRate(4000000);
}

void draw(){
  background(#F5E400);
  x=x+10;
  //loop and draw all circles
  int pomme = 0;
  while (pomme < y.length) {
    ellipse(x,y[pomme], 5, 5);
    pomme = pomme + 1;
  }

 if(x>=width){
    x=0;
  }
}  


  
