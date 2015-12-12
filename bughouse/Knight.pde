public class Knight extends Piece{
    public Knight(){
	this("white",0,0);
    }
    public Knight(String clr, int x, int y){
        super(clr,x,y);
    }
    
    public boolean directionInvalid(int cCol, int cRow){
	if( !((double)(cCol) / (double)(cRow) == .5 || (double)(cRow) / (double)(cCol) == .5) ){
	    return true;
	}
	if( Math.abs(cCol) != 1 && Math.abs(cRow) != 1){
	    return true;
	}
	return false;
    }
    
    public boolean validate(Piece[][]grid, int cCol, int cRow){
	if (directionInvalid){
	    return false;
	}
	if (grid[getY()+cRow][getX()+cCol] != null){
	    if (grid[getY()+cRow][getX()+cCol].getColor().equals(this.getColor())){
		return false;
	    }
	}
        return true;
    }

}