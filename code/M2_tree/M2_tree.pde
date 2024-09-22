import processing.pdf.*;
import Turtle.*;
Turtle t; 

// This makes nested gear shapes that have a center and that connect like a puzzle
//with a specified number of ridges and a specified side length 
//based on this:https://www.instructables.com/How-to-make-gears-easily/

int n = 4; int s = 23;
int s2 = 13;
float cx = 200; float cy = 200;
String fileName;

void setup() {
  size(400,400);
  background(255);
  stroke(0);
  t = new Turtle(this);
  t.penUp();
  noFill();
  noLoop();
}

void draw () {
  //background(255);
  //polygon(sideLength, 2*numberOfridegs, 400,400);


   //polygon(s2,2*5,cx,cy);
  strokeWeight(4);
  polygon(s,2*5,cx,cy, 10);
  stroke(255, 0, 0);
  polygon(s,2*5,cx,cy, 0);

  //polygon(s2,2*15,cx,cy);
  //polygon(s,2*12,cx,cy);

 
  //polygon(s2,2*20,cx,cy);
  //polygon(s,2*20,cx,cy);


  println("Finished.");
  //exit();
}

//a polygon drawing procedure

// This drawa a gear with 2 * numberOfSides widges 
// based on a polygon with numberOfSides and sideLength
void polygon(float sideLength, int numberOfSides, float cx, float cy, float m)
{
  // m = margin = 1/2 the width of the cross 
  //t.penUp();
  t.goToPoint(cx-m,cy+m);
  t.setHeading(0);
  t.left(90 + 180/numberOfSides);
  //t.left(90 + 180/numberOfSides);
  //t.forward(100);
  //float di = sideLength/(2*sin(PI/numberOfSides));
  //print(di);
  t.forward(sideLength/(2*sin(PI/numberOfSides)));
  //t.drawTurtle();

  t.setHeading(0);
  //t.drawTurtle();
  //t.penDown();
  float end_angle;
  float tx; float ty;
  for (int i=0;i<numberOfSides;i++)
  {
     
     t.forward(sideLength); 
     tx = t.getX(); ty = t.getY();
     point(tx,ty);
    if(i%2 == 0){
      arc(tx ,ty ,sideLength ,sideLength, t.getHeading() * PI / 180 + HALF_PI,  t.getHeading() * PI / 180 + HALF_PI + (numberOfSides+2)*PI/(numberOfSides))  ;
    }
    else{
      arc(tx ,ty ,sideLength ,sideLength, t.getHeading() * PI / 180 + HALF_PI - (numberOfSides-2)*PI/(numberOfSides),t.getHeading() * PI / 180 + HALF_PI)  ;
    }
    t.right(360/numberOfSides);
    
  //  // crossing up 
  //  if(ty+sideLength > cy/2 && ty - sideLength < cy/2 && tx < cx) {t.setY(ty + 2*m); }
  //  // crossing right 
  //  if(tx+sideLength > cx/2 && tx - sideLength < cx/2 && ty < cy) {t.setX(tx + 2*m); }
  //  // crossing down 
  //  if(ty+sideLength > cy/2 && ty - sideLength < cy/2 && tx > cx) {t.setY(ty - 2*m); }
  //  // crossing left 
  //  if(tx+sideLength > cx/2 && tx - sideLength < cx/2 && ty > cy) {t.setX(tx - 2*m); }
  }
  
}


void keyPressed() 
{
  //press the 's' key to save a pdf of your drawing
  if (key == 's') 
  {
    //name of file is "turtleDrawing" plus a unique(ish) number
    fileName= "M2GearsOverlap.pdf";
    beginRecord(PDF, fileName);
    setup();
    draw();
    endRecord();
    
  }
} 
