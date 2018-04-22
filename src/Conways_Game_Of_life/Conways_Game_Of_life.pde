Cell[][] cells;

int sclW;
int sclH;

void setup(){
 size(800,800);
 translate(width/2,height/2);
 sclW = width / 10;
 sclH = height / 10;
 cells = new Cell[sclW][sclH];
 for(int y = 0; y < sclH; y ++){
  for(int x = 0; x < sclW; x ++){
      cells[x][y] = new Cell(x * 10, y * 10, 10, true);

   }
  }
  background(0);
  updateCells();
}

void draw(){
  background(0);
  for(int y = 0; y < sclH; y ++){
   for(int x = 0; x < sclW; x ++){
     if(cells[x][y].state == true){
       /*
        Cell top = cells[x][y+1];
        Cell topleft = cells[x - 1][y + 1];
        Cell topRight = cells[x + 1][y + 1];
        
        Cell bottom = cells[x][y-1];
        Cell bottomLeft = cells[x - 1][y - 1];
        Cell bottomRight = cells[x + 1][y - 1];
        
        Cell right = cells[x + 1][y];
        Cell left = cells[x - 1][y];*/
        
        
        Cell[] neighbouringCells = new Cell[8];
        neighbouringCells[0] = cells[x][y+1];
        neighbouringCells[1] = cells[x - 1][y + 1];
        neighbouringCells[2] = cells[x + 1][y + 1];
        neighbouringCells[3] = cells[x + 1][y + 1];
        neighbouringCells[4] = cells[x][y-1];
        neighbouringCells[5] = cells[x - 1][y - 1];
        neighbouringCells[6] = cells[x + 1][y - 1];
        neighbouringCells[7] = cells[x + 1][y];
        neighbouringCells[8] = cells[x - 1][y];
        int liveCount = 0;
        int deadCount = 0;
        for(int i = 0; i < neighbouringCells.length; i++){
          if(neighbouringCells[i].state == true){
           liveCount++; 
          }
          if(neighbouringCells[i].state == false){
           liveCount--; 
          }
        }
     }
   }
  }
  updateCells();
}

void updateCells() {
  for(int y = 0; y < sclH; y ++){
   for(int x = 0; x < sclW; x ++){
     cells[x][y].show();
   }
  }
}
