class Cell {
  int x, y, rad;
  boolean state;
  boolean nextState;
  Cell(int x, int y, int rad, boolean state) {
    this.x = x;
    this.y = y;
    this.rad = rad;
    this.nextState = state;
  }

  void show() {
    this.state = nextState;
    if (state == true) {
      stroke(255);
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
