public abstract class Piece {
  private String clr;
  private int xCor, yCor;
  private boolean isAlive; 

  /**Returns the color of the piece as either "black" or "white";
   *@return String color
   */
  public String getColor() {
    return clr;
  }


  /**Returns the X-coordinate of the piece
   *@return int xCor
   */
  public int getX() {
    return xCor;
  }


  /**Returns the Y-coordinate of the piece
   *@return int yCor
   */
  public int getY() {
    return yCor;
  }

  /**Returns an array of (xCor,yCor) of the piece's position on the board
   *@return int[] Coords { xCor, yCor }
   */
  /*    public int[] getCoord(){
   	return { xCor, yCor};
   }
   */
  /** Returns whether the piece is alive or not
   *@return boolean isAlive
   */
  public boolean getAlive() {
    return isAlive;
  }
  

  /**Changes the xCor
   *@param int x: the new x-coordinate
   */
   /*
  private void changeX(int x) {
    xCor = x;
  }
  */

  /**Changes the yCor
   *@param int y: the new y-coordinate
   */
   /*
  private void changeY(int y) {
    yCor = y;
  }
*/

  /**Default constructor, not to be used
   */
  public Piece() {	
    this("white", 0, 0);
  }

  /**Constructor that creates a piece;
   *@param String color
   *@param int x-coordinate
   *@param int y-coordinate
   */
  public Piece(String clr, int x, int y) {
    this.clr = clr;
    xCor = x;  
    yCor = y;
  }


/**
  public Piece moveOld(Piece[][]grid,int dx, int dy) {
    Piece taken;
    if (validate(grid,dx,dy)) {
      taken = takePiece(grid,getX()+dx, getY()+dy); 
      changeX(xCor+dx);
      changeY(yCor+dy);
      grid[xCor][yCor] = this;
      grid[xCor-dx][yCor-dy] = null;
      return taken;
    } else {
      return null;
    }
  }
*/

  /** Moves the piece across a board. Takes in grid (not pixel!) coordinates
   *@param int targetY: the y coordinate of target square/piece
   *@param int dy: the x coordinate of target square/piece
   *@return Piece : the Piece that was taken, or a null object
   */
  public Piece[][] move(Piece[][]grid,int targetY, int targetX) {
    //Piece taken;
    int dx = targetX - xCor;
    int dy = targetY - yCor;
    if (validate(grid,dy,dx)) {
      //taken = takePiece(grid, targetY, targetX);
      grid[xCor][yCor] = null;
      xCor = targetX;
      yCor = targetY;
      grid[xCor][yCor] = this;
      return grid;
    } else {
      return null;
    }
  }

  public Piece takePiece(Piece[][]array, int yCor, int xCor) {
    Piece temp = array[xCor][yCor];
    array[xCor][yCor] = null;
    return temp;
  }
  
  public abstract void display(int shift);
  
  /**Validates the moveability of each action chosen by the action
   *@param 2D array of the grid, with positions of pieces
   *@param int dx is the change in the x direction
   *@param int dy is the change in the y direction
   */
  public abstract boolean validate(Piece[][]array, int cRow, int cCol);
}