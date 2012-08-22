int dthick = 50; //thickness of D
int dheight = 120;
int dwidth = 90;
int darc = 50;

void setup() {
  size(400,400);
  background(0);
}

void draw() {
  noFill();
  stroke(240);
  translate(150, 200-(dheight/2));
  int ax1 = dwidth-darc;
  int ay1 = 0;
  int ax2 = dwidth;
  int ay2 = darc;
  int ax3 = dwidth;
  int ay3 = dheight-darc;
  int ax4 = dwidth-darc;
  int ay4 = dheight;
  line(0, 0, 0, dheight);
  line(0, 0, ax1, 0);
  arc(ax1, ay2, darc*2, darc*2, TWO_PI-PI/2, TWO_PI);
  line(dwidth, ay2, dwidth, ay3);
  arc(ax4, ay3, darc*2, darc*2, 0, PI/2);
  line(ax4, ay4, 0, dheight);
}
