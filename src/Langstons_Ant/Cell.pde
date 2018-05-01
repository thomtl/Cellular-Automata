//dir 1 = forward
//dir 2 = right
//dir 3 = back
//dir 4 = left
//dir >4 = undefined
class Cell {
  int x, y, rad;
  boolean state;
  boolean nextState;
  boolean isAnt;
  int dir;
  Cell(int x, int y, int rad, boolean isAnt) {
    this.x = x;
    this.y = y;
    this.rad = rad;
    this.nextState = true;
    this.isAnt = isAnt;
    if (isAnt) {
      dir = 1;
    }
  }

  void show() {
    this.state = nextState;
    if (state == true && isAnt == false) {
      stroke(50);
      fill(255);
      rect(x, y, rad, rad);
    } else if (isAnt == true) {
      fill(255, 0, 0);
      stroke(50);
      rect(x, y, rad, rad);
    }
  }
  void flip() {
    this.nextState = !this.state;
  }
  void moveForward() {
    if (isAnt) {
      if (dir == 1) {
        y += 10;
      } else if (dir == 2) {
        x+= 10;
      } else if (dir == 3) {
        y-= 10;
      } else if (dir == 4) {
        x-= 10;
      }
    }
  }

  void ndegs(boolean left) {
    if (left) {
      if (dir == 0) {
        dir = 4;
        return;
      }
      dir--;
    } else if (!left) {
      if (dir == 4) {
        dir = 0;
        return;
      }
      dir++;
    }
  }
}
