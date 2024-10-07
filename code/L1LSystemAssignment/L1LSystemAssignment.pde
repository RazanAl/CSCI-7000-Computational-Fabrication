// The main processing sketch for running the L1LSystemAssignment code
// Handles incrementing/decrementing the iterations using keyPress events ('m' & 'n')
// Output can be saved by pressing 's'.
// @author: @mriveralee
// Note: This sketch uses the Turtle library which can be downloaded from
// https://github.com/leahbuechley/Turtle
import processing.svg.*;
import processing.pdf.*;

import Turtle.*;

int locationX =0; int locationY=0;

// Set to true to export as a PDF; false for SVG
boolean shouldExportAsPDF = true;

// How many l-system iterations to do before drawing
// Press 'm' to increase by 1; 'n' to decrease by 1 (min = 0);
int numIterations = 0; 

// Variable to store an L-System (either LSystem or ProbabilisticLSystem)
BaseLSystem lSys;

// The Turtle (do not rename)
Turtle t;

void setup() {
  // set-up drawing
  size(700, 700);
  surface.setResizable(true);
  background(255);
  stroke(0);
  
  // Create the turtle
  t = new Turtle(this);
  
  
  // Initialize an L-System using 
  // a method in ExampleLSystemDesigns
  // [TODO]: call your L-system design method below
  // to create your l-system
  //lSys = initSquare();
  //lSys = initPentagon();
  //lSys= initTree();
  //lSys= initFlower();
  //lSys = initProbFlower();
  //lSys= initProbTree();
  //lSys = initProbabilisticTree();
  //lSys = initProbabilistiFlower();
  //lSys = mySystem1();
  //lSys = hexSystem();
  //lSys = SpiralSystem();
  //lSys = ReemSystem();
  lSys = initReema();
  
  // Don't loop the draw function
  noLoop();
 
  // Print Instructions
  printInstructions();
}

void draw() {
  print("Drawing L-System: ");
  background(255);  
  
  // Reset the turtle position and angle
  resetTurtle();
  //t.setY(height*9/10);
  // Reset the L-System's State
  lSys.reset();
  
  // [TODO]: Iterate (simulate) the LSystem for numIterations 
  // using its iterate() function
  
  // [MYTODO]
  
  for(int i = 0; i<numIterations; i++){
 lSys.iterate();
  }
  
  
  
  /////////////////////////
  
  
  
  // Draw the LSystem using the turtle 
  lSys.drawLSystem(t);
  
  // Print the iteration number
  lSys.printIterationNumber();
  
  // Print the LSystem's State - console gets a bit overwhelmed with iterations >5
  lSys.printState();
}

void keyPressed() {
  switch (key) {
     case 'n':
      // Decrement the numIterations by 1
      numIterations -= 1;
      // Min should be 0.
      numIterations = max(0, numIterations);
      redraw();
      break;
    case 'm':
      // Increment numIterations by 1
      numIterations += 1;
      redraw();
      break;   
    case 's':
      // Export as SVG
      //press the 's' key to save a svg of your drawing
      if (key == 's') {
        String fileType = (shouldExportAsPDF) ? ".pdf" : ".svg";
        // Name of the output file is "lsystem-" with a date string 
        String fileName = "output/lsystem-" + getDateString() + fileType;
        beginRecord((shouldExportAsPDF) ? PDF : SVG, fileName);
        setup();
        draw();
        endRecord();
        println("Saved to file: " + fileName);
      }
      case CODED:
        if (keyCode == UP) {
          //windowResize(int(width*1.25),int(height*1.25) );
          locationY -= 5;

        } else if (keyCode == DOWN) {
          //windowResize(int(width*0.75),int(height*0.75)  );
           locationY += 5;
        } 
        if (keyCode == RIGHT) {
          //windowResize(int(width*1.25),int(height*1.25) );
          locationX+=5;

        } else if (keyCode == LEFT) {
          //windowResize(int(width*0.75),int(height*0.75)  );
          locationX-=5;
        } 
         surface.setLocation(locationX, locationY);
      break;
   }
 }
 
// Makes a date string (used for filenames)
String getDateString() {
  String time = str(hour()) + "_" + str(minute()) + "_" + str(second());
  String date = str(year()) + "_" + str(month()) + "_" + str(day());
  return date + "-" + time;
}

// Prints some basic instructions for key presses to the console
void printInstructions() {
  println("======== L-System Instructions ========");
  println("Press 'm' to increment the L-system iterations.");
  println("Press 'n' to decrement the L-system iterations.");
  println("Press 's' to save to PDF/SVG.");
  println("=======================================");

}

// Resets the position of the turtle
// used each time draw is called 
void resetTurtle() {
  t.penUp();
  t.clearTurtleHistory();
  
  // NOTE: You can change the start position below if the image doesn't fit.
  // y = height-20 works well if you need to draw a tree at the bottom
  t.goToPoint(width / 2, height / 2);
  t.setHeading(0);
  t.penDown();
}
