// ExampleLSystemDesigns - contains initialization methods
// to set up parameters and init the LSystem (from the main file)

import java.util.HashMap;

// [TODO]: create your own L-System initialization methods
// and use/test in the setup() method of L1LSystemAssignment file. 
// See example for Square Lsystem below.

// Square Lsystem initialization 
// This method returns an Lsystem object that uses
// The rules and axioms for a square based system
LSystem initSquare() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 90;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F+F+F+F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+F-F-FF+F+F-F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}


LSystem initPentagon() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 72;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F+F+F+F+F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+F+F-F-F+F+F-F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initTree() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 25.7;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "X";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('X', "F[/+X]*[/-X]*FX");
  rules.put('F', "FF");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initFlower() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 25.7;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  
  rules.put('F', "F[/+F]*F[/-F]*F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}


LSystem initProbFlower() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 25.7;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "f";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  
  rules.put('f', "f[/+f*]f[/-f*]f");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initProbTree() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 25.7;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "X";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('X', "f[/lX]*[/rX]*fX");
  rules.put('f', "ff");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}


ProbabilisticLSystem initProbabilistiFlower() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 25.7;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F";
  
  // Create any production rules
  HashMap<Character, String[]> rules = new HashMap<>();
  
  rules.put('F', new String[]{"F[/+F]*F[/-F]*F", "F[/-F]*F[/+F]*F", "FF[/+F]*F", "F[/-F]*F"});
    
  // Create and return the Lsystem
  return new ProbabilisticLSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}
ProbabilisticLSystem initProbabilisticTree() {
  // initialize turtle variables
  float moveDist = 30;
  float rotateAngle = 25.7;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "f[/+f[/+f[/+f[/-X]*fX]*[/-f[/-X]*fX]*fX]*[/-f[/-X]*fX]*ff[/+X]*fX]*[/-f[/+f[/-X]*fX]*[/-f[/+X]*[/-X]*fX]*ff[/+X]*fX]*ff[/+X]*[/-f[/-X]*fX]*ff[/+X]*[/-X]*fX";
  
  // Create any production rules
  HashMap<Character, String[]> rules = new HashMap<>();
  rules.put('X', new String[]{"f[/+X]*[/-X]*fX", "X", "f[/-X]*fX", "f[/+X]*fX", "X"});
  rules.put('f', new String[]{"ff", "f"});
    
  // Create and return the Lsystem
  return new ProbabilisticLSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}


LSystem mySystem1() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 60;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "XH";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  //rules.put('X', "F[+F+BX][-F-X]FX");
  rules.put('X', "F[+XH][-XH]FXH");
  rules.put('F', "FF");
  rules.put('H', "F[+H][-H]FH");
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem hexSystem() {
  // initialize turtle variables
  float moveDist = 30;
  float rotateAngle = 60;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F+F+F+F+F+F+";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  //rules.put('X', "F[+F+BX][-F-X]FX");
  //rules.put('X', "F[+XH][-XH]FXH");
  rules.put('F', "F-FF+FF+FF+FF-F");
  //rules.put('H', "F[+H][-H]FH");
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}


LSystem ReemSystem() {
  // initialize turtle variables
  float moveDist = 50;
  float rotateAngle = 1;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  //rules.put('F', "FF+FF");
  //rules.put('F', "P+F");
  rules.put('F', "PFFPFFP+FPFP");
  //rules.put('F', "P+F");
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initPexagon() {
  // initialize turtle variables
  float moveDist = 20;
  float rotateAngle = 72;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "FH+FH+FH+FH+FH+";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('P', "FH");
  rules.put('H', "FP");
  rules.put('F', "F+F");
  rules.put('+' , "-FF-");
  rules.put('-' , "+FF-");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}
