Piece [][] grid1 = new Piece[8][8];

void white1setup(){
  for(int i = 0; i < 8; i++){
    grid1[1][i]=new Pawn("white",i,1);
  }
  /*grid1[0][3]= new King("white",0,3);
  grid1[0][4]= new Queen("white",0,4);*/
  grid1[0][0]=new Rook("white",0,0);
  grid1[0][7]=new Rook("white",0,7);
  
}


void setup(){
  size(900,400);
  Grid a = new Grid();
  white1setup();
  for (int i=0; i<8;i++){
    for(int i2 = 0; i2 < grid1[i].length ; i2++){
      if(grid1[i][i2] != null){
        grid1[i][i2].display();
      }
    }
  }
}