/*
 * This program allows you to draw lines using the mouse.
 * Press 's' to save your drawing as an image to the file "myImage.jpg"
 * Press 'r' to erase your drawing and start with a blank screen
 * 
 */

// constants
int MAX=5;            // Number of squares per row
int SIZE=80;          // Size of each square
int OFFSET=10;        // Shadow offset
int GAP=20;           // Space between each square  
float FACTOR = 1.2;   // Randomisation factor

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
  randomSeed(hour() + minute() + second() + millis());
  frameRate(1);
}

// draw function -- called continuously while the program is running
void draw() {
  int drawRed = (int) random(0,MAX);
  
  for (int row=0; row < MAX; row++)
  {
    for (int column=0; column < MAX; column++)
    {
      // Draw red or brown?
      
      drawBox(row, column, 180, 100, 50);
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

void drawBox(int row, int column, int colourRed, int colourGreen, int colourBlue)
{
  int squareOffset = (int) random (-GAP*FACTOR,GAP*FACTOR);
  // background
  fill(128, 128, 0);
  rect (row*100+ OFFSET, column*100+OFFSET, SIZE, SIZE);
  // foreground
  fill(colourRed, colourGreen, colourBlue);
  rect (row*100, column*100, SIZE, SIZE);
}

