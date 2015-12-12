public class Pawn extends Piece {

  public Pawn() {
    this("white", 0, 0);
  }

  public  void display(int shift){
    PImage f=loadImage("image/"+getColor().substring(0,1)+"pawn.jpg");
    image(f,(float)getX()*50+12.5+shift,(float)getY()*50+12.5,25,25);
  }
  
  public Pawn(String clr, int x, int y) {
    super(clr, x, y);
  }

  /**Validates a Pawn's movement
   *@param int[][] grid
   *@param int dy : vertical change
   *@param int dx : horizontal change
   */
  public boolean validate(Piece[][]grid, int cRow, int cCol) {
    if (!(cRow == -1 || cRow == 1 || cRow == 0) && !(cCol == 1 || cCol == -1 || cCol == 0)) {
      return false;
    }
    if (cRow == 0 && cCol ==0) {
      return false;
    }
    if (grid[getX()+cRow][getY()+cCol] != null) {
          if (grid[getX()+cRow][getY()+cCol].getColor().equals(this.getColor())) {
          return false;
        } else {
          return true;
        }
      }
      return true;
    }
}