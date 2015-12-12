public class Rook extends Piece {
  public Rook() {
    this("white", 0, 0);
  }

  public  void display(int shift) {
    PImage f=loadImage("image/"+getColor().substring(0, 1)+"rook.jpg");
    image(f, (float)getX()*50+12.5+shift, (float)getY()*50+12.5, 25, 25);
  }
  
  public Rook(String clr, int x_cor, int y_cor) {
    super(clr, x_cor, y_cor);
  }

  public boolean validate(Piece[][]grid, int cRow, int cCol) {
    if ( cCol != 0 && cRow != 0) {
      return false;
    }
    println("got here");
    if ( cCol == 0) {
      if (cRow < 0) {
        for (int i =0; i > cRow; i--) {
          if (grid[getY()+i][getX()] != null) {
            return false;
          }
        }
      }
      return true;
    }

    if ( cRow == 0) {
      if (cCol < 0) {
        for (int i =0; i > cCol; i--) {
          if (grid[getY()][getX()+i] != null) {
            return false;
          }
        }
      }
      return true;
    }
    return true;
  }
  
}