class Cell {
  int x, y, rad;
  boolean state;
  boolean nextState;
  boolean isAnt;
  Cell(int x, int y, int rad, boolean isAnt) {
    this.x = x;
    this.y = y;
    this.rad = rad;
    this.nextState = false;
    this.isAnt = isAnt;
  }

  void show() {
    this.state = nextState;
    if (state == true && isAnt == false) {
      stroke(255);
      rect(x, y, rad, rad);
    } else if (state == true && isAnt == true) {
      stroke(255, 0, 0);
      rect(x, y, rad, rad);
    }
  }
  void die() {
    this.nextState = false;
  }
  void live() {
    this.nextState = true;
  }
}
