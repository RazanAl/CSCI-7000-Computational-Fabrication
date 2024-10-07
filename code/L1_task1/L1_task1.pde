import processing.pdf.*;
import Turtle.*;
Turtle t;

void setup(){

  size(250,250);
  background(255);
  stroke(0);
  t = new Turtle(this);
  noLoop();
}

void draw(){
float h = 70; float w = 50; // height and width of letters 
float m = 30; // margin between letters
float r = 50; // radius of circle, the pyntagon lies on the same circle :) 

    
  //T   
  t.penUp();
  t.goToPoint(m,m);
  t.push();
  t.penDown();
  t.setHeading(90);
  //stroke(0,0,255);
  t.forward(w);
  t.penUp();
  t.back(w/2);
  t.right(90);
  //stroke(0,255,0);
  t.penDown();
  t.forward(h);
  t.penUp();
  
  
  // I

  t.goToPoint(2*m + w ,m);
  t.push();
  t.penDown();
  t.setHeading(90);
  //stroke(0,0,255);
  t.forward(w);
  t.penUp();
  t.back(w/2);
  t.right(90);
  //stroke(0,255,0);
  t.penDown();
  t.forward(h);
  t.push();
  t.penUp();
  t.penDown();
  t.right(90);
  //stroke(255,255,0);
  t.forward(w/2);
  t.pop();
  t.left(90);
  //stroke(255,0,0);
  ////stroke(255);
  t.forward(w/2);
  t.penUp();
  
  //Triangle
  t.goToPoint(m,2*m + h);
  t.penDown();
  t.push();
  //stroke(0,0,255);
  t.forward(w);
  //stroke(0,255,0);
  t.goToPoint(m + w/2,2*m + 2*h);
  t.pop();
  //stroke(0,255,255);
  t.goToPoint(m + w/2,2*m + 2*h);
  t.penUp();
  
  
  //pentagon inside a circle of radius r. 
  float cx = 2*m + 3*w/2; float cy = 2*m + 3*h/2; // coordinates of the circle center.
  float angle = 360/5;
  float theta = 0;
  t.goToPoint(r*cos(radians(theta)) + cx, r*sin(radians(theta)) +cy);
  t.penDown();
  //stroke(0,0,255);
  while(theta <=360){
    if (theta % angle == 0){
    t.push();
    }
    theta += 0.25;
    t.goToPoint(r*cos(radians(theta)) + cx, r*sin(radians(theta)) +cy);
    if (theta % angle == 0){
    //stroke(0,255,0);
    t.pop();
    t.goToPoint(r*cos(radians(theta)) + cx, r*sin(radians(theta)) +cy);
    //stroke(0,0,255);
    }
    
  }
}

String fileName;


void keyPressed() 
{
  //press the 's' key to save a pdf of your drawing
  if (key == 's') 
  {
    //name of file is "turtleDrawing" plus a unique(ish) number
    fileName= "L1_TurtleDisguiseAsProcessing.pdf";
    beginRecord(PDF, fileName);
    setup();
    draw();
    endRecord();
  }
} 
