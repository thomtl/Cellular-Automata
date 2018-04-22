class Cell {
 int x, y, rad;
 boolean state;
 Cell(int x, int y, int rad, boolean state){
  this.x = x;
  this.y = y;
  this.rad = rad;
  this.state = state;
 }
 
 void show(){
   if(state == true){
    stroke(255);
    rect(x,y,rad,rad);
   }
 }
 
 void die(){
  this.state = false; 
 }
 void live(){
  this.state = true; 
 }
}
