class Grid {
  public Grid() {
    color black = color(0, 0, 0);
    color white = color(255, 255, 255);
    fill(black);

    float x=0, y=0;
    for (int a=0; a<501; a+=500) {
      for (int i = 0; i<8; i++) {
        for (int j=0; j<8; j++) {
          if ((j+i)%2==0) {
            fill(black);
          } else {
            fill(white);
          }
          rect(x, y, 50, 50);
          x+=50;
        }
        x=a;
        y+=50;
      }
      x=500;
      y=0;
    }
  }
}