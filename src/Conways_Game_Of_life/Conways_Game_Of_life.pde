Cell[][] cells;

int sclW;
int sclH;
 int b = 0;
void setup(){
 size(800,800);
 translate(width/2,height/2);
 sclW = width / 10;
 sclH = height / 10;
 cells = new Cell[sclW + 6][sclH + 6];
 for(int y = 0; y < sclH + 6; y ++){
  for(int x = 0; x < sclW + 6; x ++){
    if(random(0.0,1.0) < 0.1){
        cells[x][y] = new Cell(x * 10, y * 10, 10, true);
    } else {
        cells[x][y] = new Cell(x * 10, y * 10, 10, false);
    }


   }
  }
  background(0);
  updateCells();
}

void draw(){
  background(0);
  updateCells();
  b++;
  println(b);
  
  for(int y = 3; y < sclH; y ++){
   for(int x = 3; x < sclW; x ++){
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
        
        Cell[] neighbouringCells = new Cell[9];
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
        for(int i = 0; i < neighbouringCells.length; i++){
          if(neighbouringCells[i].state == true){
           liveCount++; 
          }
        }
        
        if(cells[x][y].state == true){
          if(liveCount < 2){
            cells[x][y].die();
          }
          if(liveCount == 2 || liveCount == 3){
           cells[x][y].live(); 
          }
          if(liveCount > 3){
           cells[x][y].die(); 
          }
        }
        if(cells[x][y].state == false){
          if(liveCount == 3){
           cells[x][y].live(); 
          }
        }
     }
   }
  }
  updateCells();
}

void updateCells() {
 for(int y = 3; y < sclH - 2; y ++){
  for(int x = 3; x < sclW - 2; x ++){
     cells[x][y].show();
   }
  }
}
