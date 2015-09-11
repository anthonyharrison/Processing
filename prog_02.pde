/*
 * This program allows you to draw lines using the mouse.
 * Press 's' to save your drawing as an image to the file "myImage.jpg"
 * Press 'r' to erase your drawing and start with a blank screen
 * 
 */

// setup function -- called once when the program begins
void setup() {

  // set the display window to size 500 x 500 pixels
  size(500, 500);

  // set the background colour to white
  background(255);
  // Default for shapes is unfilled
  noFill();
  // Set colour of all lines
  stroke(0,255,0);
  // set width of lines  
  strokeWeight(2);
}

// draw function -- called continuously while the program is running
void draw() {

  if (mousePressed) {
    /* draw a line from mouse point when pressing 
     the left mouse button */
    line(mouseX, mouseY, mouseX+100,mouseY+100);
  }
  rect (200, 200, 100, 100);
  ellipse(100, 100, 100, 100);
}

void keyPressed()
{

  // save your drawing when you press keyboard 's'
  if (key=='s') {
    saveFrame("myImage.jpg");
  }

  // erase your drawing when you press keyboard 'r'
  if (key == 'r') {
    background(255);
  }
}
