Cell[][] cells;

int sclW;
int sclH;
int b = 0;
void setup() {
  size(800, 800);
  background(0);
  //translate(0, 0);
  sclW = width / 10;
  sclH = height / 10;
  cells = new Cell[sclW][sclH];
  for (int y = 0; y < sclH; y++) {
    for (int x = 0; x < sclW; x++) {
      cells[x][y] = new Cell(x * 10, y * 10, 10, false);
    }
  }
  int rx = 0//(int)random(0, sclW);
  int ry = 0;//(int)random(0, sclH);
  cells[rx][ry] = new Cell(cells[rx][ry].x, cells[rx][ry].y, cells[rx][ry].rad, true);
  updateCells();
}

void draw() {
   frameRate(15);
   background(0);
   b++;
   println(b);
   noFill();
   fill(255, 255, 255, 255);
   text("Generations: " + b, 15, 25);
   updateCells(); 
  
}

void updateCells() {
  for (int y = 0; y < sclH; y ++) {
    for (int x = 0; x < sclW; x ++) {
      cells[x][y].show();
    }
  }
}
