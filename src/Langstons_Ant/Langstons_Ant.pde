Cell[][] cells; //<>//
Cell ant;
int sclW;
int sclH;
int b = 0;
void setup() {
  size(800, 800);
  //background(0);
  //translate(0, 0);
  sclW = width / 10;
  sclH = height / 10;
  cells = new Cell[sclW][sclH];
  for (int y = 0; y < sclH; y++) {
    for (int x = 0; x < sclW; x++) {
      cells[x][y] = new Cell(x * 10, y * 10, 10, false);
    }
  }
  ant = new Cell((int)((sclW * 10) / 2), (int)((sclH * 10) / 2), 10, true);
  println(ant.x, ant.y);
  //updateCells();
}

void draw() {
  frameRate(1);
  background(0);
  b++;
  //println(b);
  noFill();
  fill(255, 255, 255, 255);
  text("Generations: " + b, 15, 25);
  for (int y = 0; y < sclH; y++) {
    for (int x = 0; x < sclW; x++) {
      if (x == ant.x / 10 && y == ant.y / 10) {
        boolean state = cells[x][y].state;
        if (state) {
          ant.ndegs(true);
          cells[x][y].flip();
          ant.moveForward();
        } else {
          ant.ndegs(false);
          cells[x][y].flip();
          ant.moveForward();
        }
      }
    }
  }
  updateCells();
  // println("gr");
}

void updateCells() {
  for (int y = 0; y < sclH; y ++) {
    for (int x = 0; x < sclW; x ++) {
      cells[x][y].show();
    }
  }
  ant.show();
}
