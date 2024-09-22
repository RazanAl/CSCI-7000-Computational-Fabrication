 // This sketch makes a cicle with cutting marks to make the circle expand. 
 
 
 
 
 // rectangle heigt and width
 //int h = 200;
 //int w = 250;
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
 // (x−h)^2 + (y−k)^2 = r^2
  
 void setup(){
 size(300,300);
 background(255);
 strokeWeight(1);  // Default
  //rect(cx,cy,w,h);
   circle(cx,cy , 2*r);

}

void draw(){
  
  float xmiddle1 = cx - r + r/n;
  float ymiddle1 = (float) Math.sqrt(r*r - (xmiddle1-cx)*(xmiddle1-cx))+cy - margin;
  float ymiddle2 = (float) -Math.sqrt(r*r - (xmiddle1-cx)*(xmiddle1-cx))+cy + margin;
  line(xmiddle1,ymiddle1,xmiddle1,ymiddle2);


  float xedge = 0;
  float xmiddle = 0;
  float yedge1 = 0;
  float yedge2 = 0;
  float yedge3 = 0;
  float yedge4 = 0;
 
for(int i = 1; i < n; i++){
  
  xedge = cx - r + 2*r/n*i;
  xmiddle = cx - r + 2*r/n*i + r/n;
  yedge1 = (float) Math.sqrt(r*r - (xedge-cx)*(xedge-cx))+cy;
  yedge2 = (float) cy + margin;
  ymiddle1 = (float) Math.sqrt(r*r - (xmiddle-cx)*(xmiddle-cx))+cy - margin;
  ymiddle2 = (float) -Math.sqrt(r*r - (xmiddle-cx)*(xmiddle-cx))+cy + margin;
  yedge3 = cy - margin;
  yedge4 = (float) -Math.sqrt(r*r - (xedge-cx)*(xedge-cx))+cy;
  
  
  line(xedge, yedge1,xedge,yedge2);
  line(xmiddle,ymiddle1,xmiddle,ymiddle2);
  line(xedge, yedge3,xedge,yedge4);

 }
 line(xmiddle1 , cy,xmiddle , cy);

}



//void draw(){
//  for(int i = 0; i < 10; i++){
//  //topline
//  line(cx+w/10*i,cy, cx+w/10*i, cy+h/5*2);
//  // Bottom line
//  line(cx+w/10*i,cy+h, cx+w/10*i, cy+h/5*3);
//  // middle line
//  line(cx+w/10*i + w/20,cy+h/5, cx+w/10*i + w/20, cy+h/5*4);
//  }
//  line( cx+w/20,cy+h/2, cx+w/10*9 + w/20, cy+h/2);
  
//}



////boolean dark = true;
//void draw(){
//  for ( int i = 10; i>0 ; i--){
//    float r = random(150, 180);
//    float g = random(70, 100);
//    float b = random(10, 30);
//    stroke(r, g, b);
//    strokeWeight(2 + 0.1*i);
//    fill(r + 70,g + 70,b + 70);
//    circle(224, 184, 5 * i * i);
 
//  }
//}

//void draw(){
//  float r = random(100);
//  float g = random(255);
//  float b = random(255);
  
//  if(mousePressed && mouseButton == LEFT){
    
//    float h = random(100);
//    float w = random(100);
//    int d = (int) random(1,5);
//    if(d == 1){
//          rect(mouseX,mouseY, h,w);
//    } 
//    else if(d == 2){
//          rect(mouseX,mouseY, -h,w);
//    }
//    else if(d == 3){
//          rect(mouseX,mouseY, h,-w);
//    }
//    else if(d == 4){
//          rect(mouseX,mouseY, -h,-w);
//    }
    

//    }
  
  
//}
