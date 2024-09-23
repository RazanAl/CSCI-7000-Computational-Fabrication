import Turtle.*;
import processing.pdf.*;


Turtle t;
String fileName;

void setup() {
  size(500,500);
  background(255);
  stroke(0,200,100);
  t = new Turtle(this);
  noLoop();
}

void draw () {
// in each step randomly select the x coordinate to start a vine, until the end of the window (- a margin of 50) is reached.
 for (int j = 50; j<450 ; j+=random(50,80)){
 t.penUp();
// go to the selected position
 t.goToPoint(j, 350);
 t.penDown();
// move the turtle forward and draw leaves along the way, with a min of 7 and a max of 15 leaves per vine. 
 for (int i = 0; i < random(7,15); i ++ ){
// stem height between leaves is 10-30 units.
   t.forward(random(10,30));
// randomly select the leaf direction ( right = even , left = odd), and randomly select the turn angle between 20 and 45.  
   if(int(random(2)) %2 == 1){
     t.left(random(20,45));}
   else{
   t.right(random(20,45));}
  //draw the leaf
   drawLeaf(random(10,30));

  t.setHeading(0);
 
 }
 }
}


// draws a leaf of length l in the direction of the turtle t
void drawLeaf(float l){ // draw a leaf as follows
 noFill();
   t.forward(l/2); // make the stem before the leaf
  float x1 = t.getX(); // get the cordinates of the base of the leaf. this is the base vertix of the leaf shapes.
  float y1 = t.getY();
  t.forward(l/2); // draw the part of the stem that is into the leaf. 
  t.penUp();
// walk all the way up to the leaf tip, then record the coordinates as those are for the second vertix of the leaf curve. 
  t.forward(l/2); 
  float x2 = t.getX();
  float y2 = t.getY();
// get the turtle direction in radians, then put the turtle back to the starting point.
  float rtheta = radians(t.getHeading());
  t.back(l*3/2);
  t.penDown();
  
  beginShape(); // start to draw the first half of the leaf
  vertex(x1, y1); // begin at this point x1, y1, the leaf base
  bezierVertex((x1 - l/5*cos(rtheta)), (y1-l/5*sin(rtheta)), (x2-l/5*cos(rtheta)), (y2+l/2*sin(rtheta)),x2,y2); // creaate a curve from the base point, x1,y1, to the tip point x4,y4, 
// the curve depends on theta, the equation is somewhat experimantaly chosen not calculated. 
  endShape();
  beginShape(); // start to draw the second half of the leaf 
  vertex(x1, y1); // begin at the same base point
    bezierVertex((x1 + l/5*cos(rtheta)), (y1-l/5*sin(rtheta)), (x2+l/5*cos(rtheta)), (y2+l/2*sin(rtheta)),x2,y2); // again, the control points are chosen to be roughly to the right side of the leaf. 
    
endShape();
}

// function to save pdf
void keyPressed() 
{
  //press the 's' key to save a pdf of your drawing
  if (key == 's') 
  {
    //name of file is "turtleDrawing" plus a unique(ish) number
    fileName= "M2trees.pdf";
    beginRecord(PDF, fileName);
    setup();
    draw();
    endRecord();
    
  }
} 
