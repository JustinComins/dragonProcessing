import java.lang.*

dragon = 1;

void setup(){
  size(400, 400);
  background(255);
  rectMode(CORNERS);
  noFill();
  drawDragon(0);
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

for when dragon is an int
void nextIteration(){
  int n = 1;
  while(Math.pow(2, (int) Math.pow(2, n - 1)) < dragon){
    n++;
  }
  dragon =
    (int) Math.pow(2, (int) Math.pow(2, n)) * dragon +
    (int) Math.pow(2, (int) (Math.pow(2, n) - 1)) +
    dragon - (int) Math.pow(2, (n - 1) / 2);
}
