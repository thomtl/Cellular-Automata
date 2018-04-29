Cell[][] cells;

int sclW;
int sclH;
int b = 0;
void setup() {
  size(800, 800);
  //translate(width/2, height/2);
  sclW = width / 10;
  sclH = height / 10;
  cells = new Cell[sclW + 6][sclH + 6];
  for (int y = 0; y < sclH + 6; y ++) {
    for (int x = 0; x < sclW + 6; x ++) {
      cells[x][y] = new Cell(x, y, 720, false);
    }
  }
  int rx = (int)random(3, sclW - 2);
  int ry = (int)random(3, sclH - 2);
  cells[rx][ry] = new Cell(cells[rx][ry].x, cells[rx][ry].y, cells[rx][ry].rad, true);
  background(0);
  updateCells();
}

void draw() {
  /*frameRate(15);
   background(0);
   b++;
   println(b);
   noFill();
   fill(255, 255, 255, 255);
   text("Generations: " + b, 15, 25);
   
   for (int y = 3; y < sclH; y ++) {
   for (int x = 3; x < sclW; x ++) {
   Cell[] neighbouringCells = new Cell[8];
   neighbouringCells[0] = cells[x][y+1];
   neighbouringCells[1] = cells[x - 1][y + 1];
   neighbouringCells[2] = cells[x + 1][y + 1];
   neighbouringCells[3] = cells[x][y-1];
   neighbouringCells[4] = cells[x - 1][y - 1];
   neighbouringCells[5] = cells[x + 1][y - 1];
   neighbouringCells[6] = cells[x + 1][y];
   neighbouringCells[7] = cells[x - 1][y];
   //neighbouringCells[8] = cells[x][y];
   int liveCount = 0;
   for (int i = 0; i < neighbouringCells.length; i++) {
   if (neighbouringCells[i].state == true) {
   liveCount++;
   }
   }
   }
   }
   updateCells();*/
}

void updateCells() {
  for (int y = 3; y < sclH - 2; y ++) {
    for (int x = 3; x < sclW - 2; x ++) {
      cells[x][y].show();
    }
  }
}
