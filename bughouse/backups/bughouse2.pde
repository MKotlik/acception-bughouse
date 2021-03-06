//Globals
Piece [][] grid1 = new Piece[8][8];
Piece [][] grid2 = new Piece[8][8];
ArrayList<Piece> whiteInv;
ArrayList<Piece> blackInv;
String nextMove; 
String currentAction;
boolean lock;
ArrayList<Piece> piecesToUpdate;
Piece pieceSelected;
String message;

void white1setup() {
  for (int i = 0; i < 8; i++) {
    grid1[1][i]=new Pawn("white", i, 1);
  }
  /*grid1[0][3]= new King("white",4,0);*/
   grid1[0][4]= new Queen("white",3,0);
  grid1[0][0]=new Rook("white", 0, 0);
  grid1[0][7]=new Rook("white", 7, 0);
  /*grid1[0][6]=new Knight("white",6,0);
   grid1[0][1]=new Knight("white",1,0);*/
  grid1[0][5]=new Bishop("white", 5, 0);
  grid1[0][2]=new Bishop("white", 2, 0);
}

void black1setup() {
  for (int i = 0; i < 8; i++) {
    grid1[6][i]=new Pawn("black", i, 6);
  }
  /*grid1[7][4]= new King("black",4,7);*/
   grid1[7][3]= new Queen("black",3,7);
  grid1[7][0]=new Rook("black", 0, 7);
  grid1[7][7]=new Rook("black", 7, 7);
  /*grid1[7][6]=new Knight("black",6,7);
   grid1[7][1]=new Knight("black",1,7);*/
  grid1[7][5]=new Bishop("black", 5, 7);
  grid1[7][2]=new Bishop("black", 2, 7);
}

void white2setup() {
  for (int i = 0; i < 8; i++) {
    grid2[1][i]=new Pawn("white", i, 1);
  }
  /*grid2[0][3]= new King("white",0,3);*/
   grid2[0][4]= new Queen("white",0,4);
  grid2[0][0]=new Rook("white", 0, 0);
  grid2[0][7]=new Rook("white", 7, 0);
  /*grid2[0][6]=new Knight("white",6,0);
   grid2[0][1]=new Knight("white",1,0);*/
  grid2[0][5]=new Bishop("white", 5, 0);
  grid2[0][2]=new Bishop("white", 2, 0);
}

void black2setup() {
  for (int i = 0; i < 8; i++) {
    grid2[6][i]=new Pawn("black", i, 6);
  }
  /*grid2[7][4]= new King("black",4,7);*/
   grid2[7][3]= new Queen("black",3,7);
  grid2[7][0]=new Rook("black", 0, 7);
  grid2[7][7]=new Rook("black", 7, 7);
  /*grid2[7][6]=new Knight("black",6,7);
   grid2[7][1]=new Knight("black",1,7);*/
  grid2[7][5]=new Bishop("black", 5, 7);
  grid2[7][2]=new Bishop("black", 2, 7);
}

void setup() {
  size(900, 400);
  new Grid();
  white1setup();
  black1setup();
  for (int i=0; i<8; i++) {
    for (int i2 = 0; i2 < grid1[i].length; i2++) {
      if (grid1[i][i2] != null) {
        grid1[i][i2].display(0);
      }
    }
  }
  white2setup();
  black2setup();
  for (int i=0; i<8; i++) {
    for (int i2=0; i2<8; i2++) {
      if (grid1[i][i2] != null) {
        grid1[i][i2].display(500);
      }
    }
  }
  whiteInv = new ArrayList<Piece>();
  blackInv = new ArrayList<Piece>();
  piecesToUpdate = new ArrayList<Piece>();
  pieceSelected = null;
  message = "White player, select a piece to move";
  nextMove = "white";
  currentAction = "select";
  lock = false;
}

void draw() {
  if (mousePressed==true) {
    println("Pressed");
    println(grid1[1][1].getX());
    println(grid1[1][1].getY());
    grid1 = grid1[1][1].move(grid1, 2, 1);
    println(grid1[1][1].getX());
    println(grid1[1][1].getY());
    println(grid1[2][1].getX());
    println(grid1[2][1].getY());
//grid1[2][1].display(0);
  }
}