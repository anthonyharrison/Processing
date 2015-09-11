/*
 * This program allows you to draw using the mouse.
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
}

// draw function -- called continuously while the program is running
void draw() {

  if (mousePressed) {
    /* draw a rectangle at your mouse point while you are pressing 
     the left mouse button */
    fill(0); // set the fill colour to black
    rect(mouseX, mouseY, 50, 50);
  }
  fill(255, 0, 0);
  rect (200, 200, 100, 100);
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
