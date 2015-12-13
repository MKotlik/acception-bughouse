//Globals
Piece [][] grid1 = new Piece [8][8];
Piece [][] grid2 = new Piece [8][8];
ArrayList<Piece> whiteInv;
ArrayList<Piece> blackInv;
String nextMove; 
String currentAction;
boolean lock;
ArrayList<Piece> piecesToUpdate;
Piece pieceSelected;
String message = "Welcome! Player1, please select a piece to move.";
PFont f;

void white1setup() {
  for (int i = 0; i < 8; i++) {
    grid1[1][i]=new Pawn("white", i, 1);
  }
  grid1[0][3]= new King("white",4,0);
  grid1[0][4]= new Queen("white", 3, 0);
  grid1[0][0]=new Rook("white", 0, 0);
  grid1[0][7]=new Rook("white", 7, 0);
  grid1[0][6]=new Knight("white",6,0);
  grid1[0][1]=new Knight("white",1,0);
  grid1[0][5]=new Bishop("white", 5, 0);
  grid1[0][2]=new Bishop("white", 2, 0);
}

void black1setup() {
  for (int i = 0; i < 8; i++) {
    grid1[6][i]=new Pawn("black", i, 6);
  }
  grid1[7][4]= new King("black",4,7);
  grid1[7][3]= new Queen("black", 3, 7);
  grid1[7][0]=new Rook("black", 0, 7);
  grid1[7][7]=new Rook("black", 7, 7);
  grid1[7][6]=new Knight("black",6,7);
  grid1[7][1]=new Knight("black",1,7);
  grid1[7][5]=new Bishop("black", 5, 7);
  grid1[7][2]=new Bishop("black", 2, 7);
}

void white2setup() {
  for (int i = 0; i < 8; i++) {
    grid2[1][i]=new Pawn("white", i, 1);
  }
  /*grid2[0][3]= new King("white",0,3);*/
  grid2[0][4]= new Queen("white", 0, 4);
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
  grid2[7][3]= new Queen("black", 3, 7);
  grid2[7][0]=new Rook("black", 0, 7);
  grid2[7][7]=new Rook("black", 7, 7);
  /*grid2[7][6]=new Knight("black",6,7);
   grid2[7][1]=new Knight("black",1,7);*/
  grid2[7][5]=new Bishop("black", 5, 7);
  grid2[7][2]=new Bishop("black", 2, 7);
}

void delay(int delay){
  int time = millis();
  while(millis()-time<=delay);
}

void setup() {
  size(400, 500);
  Grid a = new Grid();
  new MsgBox();
  white1setup();
  black1setup();
  for (int i=0; i<8; i++) {
    for (int i2 = 0; i2 < grid1[i].length; i2++) {
      if (grid1[i][i2] != null) {
        grid1[i][i2].display(0);
      }
    }
  }
  /*
  white2setup();
   black2setup();
   for (int i=0; i<8; i++) {
   for (int i2=0; i2<8; i2++) {
   if (grid1[i][i2] != null) {
   grid1[i][i2].display(500);
   }
   }
   }
   */
  whiteInv = new ArrayList<Piece>();
  blackInv = new ArrayList<Piece>();
  piecesToUpdate = new ArrayList<Piece>();
  pieceSelected = null;
  nextMove = "white";
  currentAction = "select";
  lock = false;
  f = createFont("Arial",16,true);
  textFont(f,16);
  fill(255);
  text(message,20,450);
}

//This is working
/*
void draw2() {
  if (grid1[6][2] == null) {
    println("nulled");
  }
  if (mousePressed==true) {
    grid1[6][2].move(grid1, 4, 5);
  }
  for (int i=0; i<8; i++) {
    for (int i2 = 0; i2 < grid1[i].length; i2++) {
      if (grid1[i][i2] != null) {
        grid1[i][i2].display(0);
      }
    }
  }
}
*/

//This is in development
void draw() {
  clear();
  new Grid();
  new MsgBox();
  f = createFont("Arial",16,true);
  textFont(f,16);
  fill(255);
  text(message,20,450);
  for (int i=0; i<8; i++) {
    for (int i2 = 0; i2 < grid1[i].length; i2++) {
      if (grid1[i][i2] != null) {
        grid1[i][i2].display(0);
      }
    }
  }
  lock = false;
}

void mouseClicked() {
  println("click");
  if (!lock) {
    int xPos = (int)((mouseX)/50);
    int yPos = (int)((mouseY)/50);
    Piece clickedPiece = grid1[yPos][xPos];
    if (clickedPiece != null && clickedPiece.getColor().equals("white") && nextMove.equals("white") && currentAction.equals("select")) {
      pieceSelected = clickedPiece;
      currentAction = "target";
      println("Selected.");
      message = "Player 1, please select your target square.";
    } else if ((clickedPiece == null || clickedPiece.getColor().equals("black")) && nextMove.equals("white") && currentAction.equals("target")) {
      grid1[pieceSelected.getY()][pieceSelected.getX()].move(grid1, yPos, xPos);
      lock = true;
      println("Target acquired. Locked.");
      pieceSelected = null;
      nextMove = "black";
      currentAction = "select";
      message = "Player 2, please select a piece to move.";
    } else if (clickedPiece != null && clickedPiece.getColor().equals("black") && nextMove.equals("black") && currentAction.equals("select")) {
      pieceSelected = clickedPiece;
      currentAction = "target";
       println("Selected.");
       message = "Player 2, please select your target square.";
    } else if ((clickedPiece == null || clickedPiece.getColor().equals("white")) && nextMove.equals("black") && currentAction.equals("target")) {
      grid1[pieceSelected.getY()][pieceSelected.getX()].move(grid1, yPos, xPos);
      lock = true;
      println("Target acquired. Locked.");
      pieceSelected = null;
      nextMove = "white";
      currentAction = "select";
      message = "Player 1, please select a piece to move.";
    } else {
      println("Await your turn please.");
    }
  } else {
    println("locked");
  }
}