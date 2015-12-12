public class Rook extends Piece{
       public Rook(){
       	      this("white",0,0);
       }

       public Rook(String clr, int x_cor, int y_cor){
       	      super(clr,x_cor,y_cor);
       }

       public boolean validate(Piece[][]grid,int dx, int dy){
	   if( dx != 0 ^ dy != 0){
	       return false;
	   }
	   if( dx == 0){
	       if (dy < 0){
		   for(int i =0; i > dy; i--){
		       if(grid[getX()][getY()+i] != null){
			   return false;
		       }
		   }
	       }else{
		   for(int i=0; i< dy; i++){
		       if(grid[getX()][getY()+i] != null){
			   return false;
		       }
		   }
	       }
	       if(grid[getX()+dx][getY()+dy] != null){
		   takePiece(getX()+dx,getY()+dy);
		   return true;
	       }
	       return true;
	   }

	   
	   if( dy == 0){
	       if (dx < 0){
		   for(int i =0; i > dx; i--){
		       if(grid[getX()+i][getY()] != null){
			   return false;
		       }
		   }
	       }else{
		   for(int i=0; i< dx; i++){
		       if(grid[getX()+i][getY()] != null){
			   return false;
		       }
		   }
	       }
	       if(grid[getX()+dx][getY()+dy] != null){
		   takePiece(getX()+dx,getY()+dy);
		   return true;
	       }
	       return true;
	   }
	   
       }





}

