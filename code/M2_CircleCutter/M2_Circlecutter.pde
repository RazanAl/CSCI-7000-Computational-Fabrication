 // This sketch makes a cicle with cutting marks to make the circle expand. 
import processing.pdf.*;
String fileName;
// center of the circle , or top left corner of rectangle
 int cx = 150;
 int cy = 150;
 // circle radius
 int r  = 125;
 // margin between cuts and edges
 int margin = r/5;
 // number of divisions
 int n = 5;
 
 import java.lang.Math; 
 // Below is the circle equation I use to determine where cut lines start/end
 // (x−h)^2 + (y−k)^2 = r^2
  
 void setup(){
 size(300,300);
 background(255);
 strokeWeight(1);  // Default
 circle(cx,cy , 2*r); // Circle to be cut

}

void draw(){

 // These are the coordinates I need to make the middle horizontal cut across the circle
  float xmiddle1 = cx - r + r/n;
  float ymiddle1 = (float) Math.sqrt(r*r - (xmiddle1-cx)*(xmiddle1-cx))+cy - margin;
  float ymiddle2 = (float) -Math.sqrt(r*r - (xmiddle1-cx)*(xmiddle1-cx))+cy + margin;
  line(xmiddle1,ymiddle1,xmiddle1,ymiddle2);


  float xedge = 0; // x coordinate of the outer edge vertical cuts. 
  float xmiddle = 0; // x coordinate of the middle vertical cuts ( the ones that do not touch the circle parameter.
  float yedge1 = 0; // y coordinate of the first point of the bottom edge vertical cut 
  float yedge2 = 0; // y coordinate of the second point of the bottom edge vertical cut  
  float yedge3 = 0;// y coordinate of the first point of the top edge vertical cut 
  float yedge4 = 0;// y coordinate of the second point of the top edge vertical cut 
 
for(int i = 1; i < n; i++){
  
  xedge = cx - r + 2*r/n*i; // if the edge cuts divide the circle to n vertical regions, each reaigon would be of width 2*r, and the ith cut will be at  cx - r + 2*r/n*i
  xmiddle = cx - r + 2*r/n*i + r/n; // a middle cut is offset from the edge cut by 2*r/2*n 
  yedge1 = (float) Math.sqrt(r*r - (xedge-cx)*(xedge-cx))+cy;// y is computed by the circle equation sincee the first point is on the center.
  yedge2 = (float) cy + margin; // the first cut ends "margin" unnits before the circle horizontal diameter, the rest is similar but to the top cut.
  ymiddle1 = (float) Math.sqrt(r*r - (xmiddle-cx)*(xmiddle-cx))+cy - margin;
  ymiddle2 = (float) -Math.sqrt(r*r - (xmiddle-cx)*(xmiddle-cx))+cy + margin;
  yedge3 = cy - margin;
  yedge4 = (float) -Math.sqrt(r*r - (xedge-cx)*(xedge-cx))+cy;
  
  // draw the 3  ( 2 edge and 1 middle) cuts in the ith region of the n regions.
  line(xedge, yedge1,xedge,yedge2);
  line(xmiddle,ymiddle1,xmiddle,ymiddle2);
  line(xedge, yedge3,xedge,yedge4);

 }
 line(xmiddle1 , cy,xmiddle , cy);

}


void keyPressed() 
{
  //press the 's' key to save a pdf of your drawing
  if (key == 's') 
  {
    //name of file is "turtleDrawing" plus a unique(ish) number
    fileName= "M2GearsOverlap.jpeg";
    beginRecord(PDF, fileName);
    setup();
    draw();
    endRecord();
    
  }
} 


