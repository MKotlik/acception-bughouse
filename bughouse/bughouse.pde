ArrayList<Piece> white1 = new ArrayList<Piece>();
ArrayList<Piece> black1 = new ArrayList<Piece>();

void white1setup(){
  for(int i = 0; i < 8; i++){
    Piece x = new Pawn("white",i,1);
    white1.add(x);
  }
}

void black1setup(){
  for(int i = 0; i < 8; i++){
    Piece x = new Pawn("black",i,6);
    black1.add(x);
  }
}

/*void imagesetup(){
  for(int i = 0; i < white1.size(); i++){
    PImage piece = loadImage("b"+white1.get(i).name()+".jpg");
    piece.display();
  }
}
*/

void setup(){
  size(900,400);
  Grid a = new Grid();
}