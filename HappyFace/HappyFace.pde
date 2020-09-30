//Global Variables
int faceX, faceY;
int faceDiameter;
int leftEyeX, leftEyeY, leftEyeDiameter;
int rightEyeX, rightEyeY, rightEyeDiameter;
int noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
int mouthX1, mouthY1, mouthX2, mouthY2;
float measlesX1, measlesY1, measlesDiameter;
color measlesColor = #FF0808; 
int reset;

void setup() {
size (650, 600);
//fullScreen();
println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
//
population();
//
ellipse(faceX, faceY, faceDiameter, faceDiameter);
ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
 arc(325, 400, 150, 150, -PI+PI, PIE);  
 
}//End setup

void draw() {
  measlesX1 = random(width);
measlesY1 = random(height);
measlesDiameter = random(height*1/20, height*1/10);
 fill(measlesColor);
 ellipse(measlesX1, measlesY1, measlesDiameter, measlesDiameter);
 ellipse(measlesX1, measlesY1, measlesDiameter, measlesDiameter);
 ellipse(measlesX1, measlesY1, measlesDiameter, measlesDiameter);
 ellipse(measlesX1, measlesY1, measlesDiameter, measlesDiameter);
 ellipse(measlesX1, measlesY1, measlesDiameter, measlesDiameter);
 fill(reset);
}//End draw

void keyPressed() {
//Quit Keyboard Button
if(key == 'q' || key == 'Q') { exit();}//End IF
}//End keyPressed

void mousePressed() {}//End mousePressed
