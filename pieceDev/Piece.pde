public abstract class Piece{
    private String color;
    private int x_cor, y_cor;
    private boolean isAlive; 

    /**Returns the color of the piece as either "black" or "white";
     *@return String color
     */
    public String getColor(){
	return color;
    }


    /**Returns the X-coordinate of the piece
     *@return int x_cor
     */
    public int getXCor(){
	return x_cor;
    }


    /**Returns the Y-coordinate of the piece
     *@return int y_cor
     */
    public int getYCor(){
	return y_cor;
    }

    /**Returns an array of (x_cor,y_cor) of the piece's position on the board
     *@return int[] Coords { x_cor, y_cor }
     */
    public int[] getCoord(){
	return { x_cor, y_cor};
    }

    /** Returns whether the piece is alive or not
     *@return boolean isAlive
     */
    public boolean getAlive(){
	return isAlive;
    }

    /**Changes the x_cor
     *@param int x: the new x-coordinate
     */
    private void changeX(int x){
	x_cor = x;
    }

    /**Changes the y_cor
     *@param int y: the new y-coordinate
     */
    private void changeY(int y){
	y_cor = y;
    }
    
    /**Default constructor, not to be used
     */
    public Piece(){
	Piece("white",0,0);
    }
    
    /**Constructor that creates a piece;
     *@param String color
     *@param int x-coordinate
     *@param int y-coordinate
     */
    public Piece(String clr, int x, int y){
	color = clr;
	x_cor = x;
	y_cor = y;
    }
    
    
    /** Moves the piece across a board.
     *@param int dx: the change in x
     *@param int dy: the change in y
     *@return boolean moved? : returns if the piece has moved.
     */
    public boolean move(int dx, int dy){
	if (validate(x_cor+dx,y_cor+dy)){
	    changeX(x_cor+dx);
	    changeY(y_cor+dy);
	    return true;
	}else{
	    return false;
	}
    }
    
    public Piece takePiece(Piece[][]array,int x_cor, int y_cor){
	Piece temp = array[x_cor][y_cor];
	array[x_cor][y_cor];
	return temp;
    }

    /**Validates the moveability of each action chosen by the action
     *@param 2D array of the grid, with positions of pieces
     *@param int dx is the change in the x direction
     *@param int dy is the change in the y direction
     */
    public abstract boolean validate(Piece[][]array,int dx, int dy);
    
    
}