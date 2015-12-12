public class King extends Piece {
  public King() {
    this("white", 0, 0);
  }
  public King(String clr, int x, int y) {
    super(clr, x, y);
  }

  public void display(int shift) {
    PImage f=loadImage("image/"+getColor().substring(0, 1)+"king.jpg");
    image(f, (float)getX()*50+12.5+shift, (float)getY()*50+12.5, 25, 25);
  }

  public boolean validate(Piece[][]grid, int cRow, int cCol) {
    if (!(cRow == -1 || cRow == 1 || cRow == 0) ||  !(cCol == 1 && cCol == -1 && cCol == 0)) {
      return false;
    }
    if (cRow == 0 && cCol ==0) {
      return false;
    }
    if (grid[getY()+cRow][getX()+cCol] != null) {
      if (grid[getY()+cRow][getX()+cCol].getColor().equals(this.getColor())) {
          return false;
      }
      return true;
    } else {
      return true;
    }
  }
}