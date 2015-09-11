/*
 * This program allows you to draw lines using the mouse.
 * Press 's' to save your drawing as an image to the file "myImage.jpg"
 * Press 'r' to erase your drawing and start with a blank screen
 * 
 */

// constants
int MAX=5;
int SIZE=95;

// setup function -- called once when the program begins
void setup() {

  // set the display window to size 500 x 500 pixels
  size(500, 500);

  // set the background colour to white
  background(255);
  // Default for shapes is unfilled
  noFill();
  // Set colour of all lines
  stroke(0, 0, 255);
  // set width of lines  
  strokeWeight(2);
}

// draw function -- called continuously while the program is running
void draw() {

  for (int row=0; row < MAX; row++)
  {
    for (int column=0; column < MAX; column++)
    {
      drawBox(row, column);
    }
  }
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

void drawBox(int row, int column)
{
  if (row == column) 
  {
    fill(255, 0, 0);
  } else
  {
    noFill();
  }
  rect (row*100, column*100, SIZE, SIZE);
  ellipse(row*100+50, column*100+50, SIZE, SIZE);
}

