int dragon = 1;

void setup(){
  size(400, 400);
  background(255);
  rectMode(CORNERS);
  noFill();
  drawDragon(0);
}

void nextIteration(){
  int n = 1;
  while(Math.pow(2, (int) Math.pow(2, n - 1)) < dragon){
    n++;
  }
  dragon =
    (int) Math.pow(2, (int) Math.pow(2, n)) * dragon +
    (int) Math.pow(2, (int) (Math.pow(2, n) - 1)) +
    complimentCenter(dragon, n);
}

void drawDragon(int d){
  
}

void mousePressed(){
  background(255);
  nextIteration();
  drawDragon(dragon);
}

void keyPressed(){
  if(key == ENTER){
    background(255);
    dragon = 1;
  }
  if(key == TAB){
    background(255);
    nextIteration();
    drawDragon(dragon);
  }
}

int complimentCenter(int a, int b){
  if(a %  Math.pow(2, (b + 1) / 2) > Math.pow(2, (b - 1) / 2)){
    return (int) (a - Math.pow(2, (b - 1) / 2));
  }
  else{
    return (int) (a + Math.pow(2, (b - 1) / 2));
  }
}