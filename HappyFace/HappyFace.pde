//Global Variables
int reset;
int faceX, faceY, faceDiameter;
int leftEyeX, leftEyeY, leftEyeDiameter;
int rightEyeX, rightEyeY, rightEyeDiameter;
int noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
color red = #FF0303;
color measlesColor = red;
color white = 255;
color colorReset = white;
float measlesX, measlesY, measlesDiameter;
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, yellow, purple;
color blue = #1CECFC;
color green = #FFFFFF;


void setup() {
  size (700, 500);
  //fullScreen();
  println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
  //
  population();
  //
  //faceDraw();
  background(0);
  triangle(100, 250, 350, 00, 100, 00);

  ellipse(faceX, faceY, faceDiameter, faceDiameter);
}//End setup

void draw() {
   
  measlesX = random(width*1/2-height*1/2, width*1/2+height*1/2);
  measlesY = random(height);
  measlesDiameter = random(height*1/70, height*1/40);
  fill(measlesColor);
  //Parameters are randomly set ;)
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
fill(#EAEAEA);
  
 // fill(#12CAFF);
  //triangle(1, 450, 1, 1, 300, 1);
  fill(colorReset);
 // triangle(200, 480, 1, 900, 1, 1);
 // triangle(200, 480, 1, 900, 1, 1);
  fill(colorReset);
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset);
  
 if (mouseX>buttonX && mouseX<width && mouseY>height*0 && mouseY<buttonHeight) { //Button Hoverover;
    buttonColour = yellow; //Hoverover
  } else {
    buttonColour = purple;
  }// End IF
  String title = "X";
PFont titleFont;
titleFont = createFont ("Times New Roman Bold", 30);
  fill(buttonColour); 
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(0);
  textAlign(CENTER, CENTER);
  textFont(titleFont, 20);
text(title, width*23/32, height*0/16, width*1/2, height*1/16 );
fill(colorReset);
}//End draw

void keyPressed() {
  //Quit Keyboard Button
  if (key == 'q' || key == 'Q') { 
    exit();
  }//End IF
}//End keypressed

void mousePressed() {
   if (mouseX>buttonX && mouseX<width && mouseY>height*0 && mouseY<buttonHeight)
    exit();
}//End mousePressed
