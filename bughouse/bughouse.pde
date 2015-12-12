ArrayList<Piece> white1 = new ArrayList<Piece>();
void white1setup(){
  for(int i = 0; i < 8; i++){
    Piece x = new Pawn("white",i,1);
    white1.add(x);
  }
}


void setup(){
  size(900,400);
  Grid a = new Grid();
}