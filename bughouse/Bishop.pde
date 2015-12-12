public Bishop extends Piece {

  public Bishop() {
    this("white", 0, 0);
  }


  public Bishop(String clr, int x_cor, int y_cor) {
    super(clr, X_cor, y_cor);
  }

  public  void display(int shift) {
    PImage f=loadImage("image/"+getColor().substring(0, 1)+"bishop.jpg");
    image(f, (float)getX()*50+12.5+shift, (float)getY()*50+12.5, 25, 25);
  }

  public directionInvalid(int dx, int dy) {
    if ((double)(dx) / (double)dy != 1 && (double)(dx) / (double)(dy) != -1) {
      return true;
    }
    return false;
  }

  public boolean validate(Piece[][]grid, int dx, int dy) {
    if (directionInvalid(dx, dy)) {
      return false;
    }
    if (dx < 0 && dy < 0) {
      for (int i =0; i > dx; i--) {
        if (grid[getX()+i][getY()+i] != null) {
          return false;
        }
      }
    }
    if (dx < 0 && dy > 0) {
      for (int i =0; i > dx; i--) {
        if (grid[getX()+i][getY()-i] != null) {
          return false;
        }
      }
    }
    if (dx > 0 && dy < 0) {
      for (int i =0; i > dy; i--) {
        if (grid[getX()-i][getY()+i] != null) {
          return false;
        }
      }
    }
    if (dx > 0 && dy > 0) {
      for (int i =0; i < dy; i++) {
        if (grid[getX()+i][getY()+i] != null) {
          return false;
        }
      }
    }
    if (grid[getX()+dx][getY()+dy] != null) {
      takePiece(grid, getX()+dx, getY()+dy);
      return true;
    }
    return true;
  }
}