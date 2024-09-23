import processing.pdf.*;
import Turtle.*;
Turtle t; 

// This makes a nested gear shape with a specified number of ridges and a specified side length based on this:https://www.instructables.com/How-to-make-gears-easily/

int n = 4; 
int s = 23; // ridges size of the first set
int s2 = 13; // ridges size of the second set
float cx = 200; float cy = 200; // gear center 
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
 

  polygon(s2,2*5,cx,cy);
  polygon(s,2*5,cx,cy);

  polygon(s2,2*15,cx,cy);
  polygon(s,2*15,cx,cy);
  
  polygon(s,2*20,cx,cy);
  polygon(s2,2*20,cx,cy);
}

//a polygon drawing procedure

// This drawa a gear with 2 * numberOfSides widges each of size sideLength/2
void polygon(float sideLength, int numberOfSides, float cx, float cy)
{

// move the turtle to the left vertix of the polygon so the polygon is centered at cx,cy
  t.goToPoint(cx,cy);
  t.setHeading(0);
  t.left(90 + 180/numberOfSides); // turn left towards the lower vertix position
  t.forward(sideLength/(2*sin(PI/numberOfSides))); 

  t.setHeading(0);
  
  for (int i=0;i<numberOfSides;i++)
  {
    // walk up a side of the polygon, then draw the arc centered at the polygon vertix (current turtle location) 
    // the arcs concavity/convixity with respect to the polygon center alternates. 
    t.forward(sideLength);
    if(i%2 == 0){
      arc(t.getX() ,t.getY() ,sideLength ,sideLength, t.getHeading() * PI / 180 + HALF_PI,  t.getHeading() * PI / 180 + HALF_PI + (numberOfSides+2)*PI/(numberOfSides))  ;
    }
    else{
      arc(t.getX() ,t.getY() ,sideLength ,sideLength, t.getHeading() * PI / 180 + HALF_PI - (numberOfSides-2)*PI/(numberOfSides),t.getHeading() * PI / 180 + HALF_PI)  ;
    }
    t.right(360/numberOfSides);// turn the turtle to face the next vertix.
    
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
