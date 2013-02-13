int dragon = 1;

void setup(){
  size(400, 400);
  background(255);
  rectMode(CORNERS);
  noFill();
  drawDragon(0);
}

void nextIteration(){
  for(int n = 1; 2 ^ (2 ^ n - 1) < dragon; n++){
    n++;
  }
  dragon =
    Math.pow(2, Math.pow(2, n)) * dragon +
    Math.pow(2, (Math.pow(2, n) - 1) +
    dragon ^ Math.pow(2, n - 1);
}

void drawDragon(int d){
  
}

void mousePressed(){
  background(255);
  gen++;
  nextIteration();
  drawDragon(dragon);
}

void keyPressed(){
  if(key == ENTER){
    background(255);
    gen = 0;
  }
  if(key == TAB){
    background(255);
    gen++;
  }
}
