public class Queen extends Piece {
  public Queen() {
    this("white", 0, 0);
  }
  public Queen(String clr, int x_cor, int y_cor) {
    super(clr, x_cor, y_cor);
  }

  public  void display(int shift) {
    PImage f=loadImage("image/"+getColor().substring(0, 1)+"queen.jpg");
    image(f, (float)getX()*50+12.5+shift, (float)getY()*50+12.5, 25, 25);
  }
    public boolean directionInvalid(int dx, int dy) {
      if ( (double)(dx) / (double)(dy) != 1 || (double)(dx) / (double)(dy) != -1 || dx != 0 || dy != 0) {
        return true;
      }
      if (dx != 0 ^ dy != 0) {
        return true;
      }
      return false;
    }

    public boolean validate(Piece[][]grid, int dx, int dy) {
      if ( directionInvalid(dx, dy)) {
        return false;
      }
      if ( dx == 0) {
        if (dy < 0) {
          for (int i =0; i > dy; i--) {
            if (grid[getX()][getY()+i] != null) {
              return false;
            }
          }
        } else {
          for (int i=0; i< dy; i++) {
            if (grid[getX()][getY()+i] != null) {
              return false;
            }
          }
        }
        return true;
      }


      if ( dy == 0) {
        if (dx < 0) {
          for (int i =0; i > dx; i--) {
            if (grid[getX()+i][getY()] != null) {
              return false;
            }
          }
        } else {
          for (int i=0; i< dx; i++) {
            if (grid[getX()+i][getY()] != null) {
              return false;
            }
          }
        }
        return true;
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
      return true;
    }
  }