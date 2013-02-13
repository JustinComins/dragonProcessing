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

int gen = 0;
int tail = 10;
int prevTail = 0;

public void setup(){
  size(400, 400);
  background(255);
  rectMode(CORNERS);
  noFill();
  drawTail(prevTail);
}

public void makeTail(){

}

public void drawTail(int tail){
    
}

public void mousePressed(){
  background(255);
  gen++;
  makeTail();
  drawTail();
}

public void keyPressed(){
  if(key == ENTER){
    background(255);
    gen = 0;
  }
  if(key == TAB){
    background(255);
    gen++;
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
