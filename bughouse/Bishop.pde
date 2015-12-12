public class Bishop extends Piece {

  public Bishop() {
    this("white", 0, 0);
  }


  public Bishop(String clr, int x_cor, int y_cor) {
    super(clr, x_cor, y_cor);
  }

  public  void display(int shift) {
    PImage f=loadImage("image/"+getColor().substring(0, 1)+"bishop.jpg");
    image(f, (float)getX()*50+12.5+shift, (float)getY()*50+12.5, 25, 25);
  }

  public boolean directionInvalid(int dx, int dy){
    if ((double)(dx) / (double)dy != 1 && (double)(dx) / (double)(dy) != -1) {
      return true;
    }
    return false;
  }

  public boolean validate(Piece[][]grid, int cRow, int cCol) {
    if (directionInvalid(cCol, cRow)) {
      return false;
    }
    if (cCol < 0 && cCol< 0) {
      for (int i =0; i > cCol; i--) {
        if (grid[getX()+i][getY()+i] != null) {
          return false;
        }
      }
    }
    if (cCol < 0 && cRow > 0) {
      for (int i =0; i > cCol; i--) {
        if (grid[getX()-i][getY()+i] != null) {
          return false;
        }
      }
    }
    if (cCol > 0 && cRow < 0) {
      for (int i =0; i > cRow; i--) {
        if (grid[getX()+i][getY()-i] != null) {
          return false;
        }
      }
    }
    if (CCol > 0 && cRow > 0) {
      for (int i =0; i < cCol; i++) {
        if (grid[getX()+i][getY()+i] != null) {
          return false;
        }
      }
    }
    return true;
  }
}