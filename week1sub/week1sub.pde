int cols = 50;
int rows = 50;

int partx, party;

float rand = 0;

void setup() {
  
frameRate(10);

  fill(250);
  noStroke();

  size(800, 600);
  
  partx = (width / rows);
  party = (height / cols);
  
}

void draw() {
  background(0);

  for (int y = 0; y < rows; y++ ) {
    for (int x = 0; x < cols; x++ ) {
      partx = int(partx+(cos(y+rand)*7));
     
      
      float r = random(255);
float g = random(255);
float b = random(255);
      
      fill(r, g, b);
      rect(y*partx, x*party + 4, partx/2, party/2);
    }
  }
}

void mousePressed() {
  rand = random(10);
 
}
