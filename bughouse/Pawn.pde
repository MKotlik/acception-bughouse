public class Pawn extends Piece {

  public Pawn() {
    this("white", 0, 0);
  }


  public Pawn(String clr, int x, int y) {
    super(clr, x, y);
  }

  /**Validates a Pawn's movement
   *@param int[][] grid
   *@param int dx : change in x
   *@param int dy : change in y
   */
  public boolean validate(Piece[][]grid, int dx, int dy) {
    if (dy != 1 || !(dx == -1 || dx ==1) ) {
      return false;
    }
    if (grid[getX()+dx][getY()+dy] == null) {
      return true;
    } else {
      if (grid[getX()+dx][getY()+dy] != null) {
        if (grid[getX()+dx][getY()+dy].getColor().equals(this.getColor())) {
          return false;
        } else {
          takePiece(grid, getX()+dx, getY()+dy);
          return true;
        }
      }
      return false;
    }
  }
}