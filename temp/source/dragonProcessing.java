import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class dragonProcessing extends PApplet {

int dragon = 1;

public void setup(){
  size(400, 400);
  background(255);
  rectMode(CORNERS);
  noFill();
  drawDragon(0);
}

public void nextIteration(){
  int n = 1;
  while(Math.pow(2, (int) Math.pow(2, n - 1)) < dragon){
    n++;
  }
  dragon =
    (int) Math.pow(2, (int) Math.pow(2, n)) * dragon +
    (int) Math.pow(2, (int) (Math.pow(2, n) - 1)) +
    dragon - (int) Math.pow(2, (n - 1) / 2);
}

public void drawDragon(int d){
  
}

public void mousePressed(){
  background(255);
  nextIteration();
  drawDragon(dragon);
}

public void keyPressed(){
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
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "dragonProcessing" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
