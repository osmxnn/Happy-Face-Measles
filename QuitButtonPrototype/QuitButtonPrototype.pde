//Global Variables

int buttonX, buttonY, buttonWidth, buttonHeight;

void setup() {
size(400,300);
//population
buttonX = width*1/4;
buttonY = height*1/4;
buttonWidth = width*1/2;
buttonHeight = height*1/2;
}//End setup

void draw() {

//Population


rect(buttonX, buttonY, buttonWidth, buttonHeight);

}//End draw
void keyPressed() {
  //Quit Keyboard Button
  if (key =='q' || key 'Q' ) {
    exit();
  }//End IF
}//End keypressed

void mousePressed() {
  if( mouseX>width*1/4 && mouseX<width*3/4 && mouseY>height*1/4 && mouseY<) {}//End IF, using mouseX & mouseY
}//End keyPressed
