import processing.pdf.*;
import Turtle.*;
Turtle t; 

// This makes a nested gear shape with a specified number of ridges and a specified side length based on this:https://www.instructables.com/How-to-make-gears-easily/

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
  //noLoop();
}

void draw () {
  //background(255);
  //polygon(sideLength, 2*numberOfridegs, 400,400);

  //polygon(s,2*3,400,400);
  //polygon(s,2*4,400,400);
   polygon(s2,2*5,cx,cy);
  polygon(s,2*5,cx,cy);
  //polygon(s2,2*3,400,400);
  //polygon(s,2*6,400,400);
  //polygon(s,2*7,400,400);
  //polygon(s,2*8,400,400);
  //polygon(s,2*9,400,400);
  //polygon(s,2*10,400,400);
  //polygon(s2,2*10,400,400);
  //polygon(s,2*11,400,400);
  polygon(s2,2*15,cx,cy);
  polygon(s,2*15,cx,cy);
  //polygon(s,2*13,400,400);
  //polygon(s,2*14,400,400);
  //polygon(s,2*15,400,400);
  //polygon(s2,2*15,400,400);
  //polygon(s,2*16,400,400);
  //polygon(s,2*17,400,400);
  //polygon(s,2*18,cx,cy);
  //polygon(s2,2*18,cx,cy);
  polygon(s,2*20,cx,cy);
  polygon(s2,2*20,cx,cy);


  println("Finished.");
  //exit();
}

//a polygon drawing procedure

// This drawa a gear with 2 * numberOfSides widges 
// based on a polygon with numberOfSides and sideLength
void polygon(float sideLength, int numberOfSides, float cx, float cy)
{
  //t.penUp();
  t.goToPoint(cx,cy);
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
  
  for (int i=0;i<numberOfSides;i++)
  {
    
     t.forward(sideLength);
    if(i%2 == 0){
      arc(t.getX() ,t.getY() ,sideLength ,sideLength, t.getHeading() * PI / 180 + HALF_PI,  t.getHeading() * PI / 180 + HALF_PI + (numberOfSides+2)*PI/(numberOfSides))  ;
    }
    else{
      arc(t.getX() ,t.getY() ,sideLength ,sideLength, t.getHeading() * PI / 180 + HALF_PI - (numberOfSides-2)*PI/(numberOfSides),t.getHeading() * PI / 180 + HALF_PI)  ;
    }
    t.right(360/numberOfSides);
    
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
