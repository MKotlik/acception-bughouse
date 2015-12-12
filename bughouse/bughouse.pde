Piece [][] grid1 = new Piece[8][8];

void white1setup(){
  for(int i = 0; i < 8; i++){
    Piece x = new Pawn("white",i,1);
    grid1[1][i]=x;
  }
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