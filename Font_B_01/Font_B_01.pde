int dthick = 50; //thickness of D
int gap = 2;
int dheight = 60;
int dwidth = 80;
int darc = 30;
int tx = 200-(dwidth/2);
int ty = 200-(dheight/2);

void setup() {
  size(400,400);
  background(0);
}

void draw() {
  smooth();
  background(0);
  noFill();
  for(int i=0; i<(dthick/gap); i=i+gap){
  translate(tx, ty-(dheight+dthick)/2);
  stroke(i,100-i*5,200-i*5);
  int ax1 = dwidth-darc;
  int ay1 = 0-(i*gap);
  int ax2 = dwidth+(i*gap);
  int ay2 = darc;
  int ax3 = dwidth;
  int ay3 = dheight-darc;
  int ax4 = dwidth-darc;
  int ay4 = dheight;
  line(0-(i*gap), 0-(i*gap), 0-(i*gap), dheight+(i*gap));
  line(0-(i*gap), ay1, ax1, ay1);
  arc(ax1, ay2, (darc+(i*gap))*2, (darc+(i*gap))*2, TWO_PI-PI/2, TWO_PI);
  line(dwidth+(i*gap), ay2, dwidth+(i*gap), ay3);
  arc(ax4, ay3, (darc+(i*gap))*2, (darc+(i*gap))*2, 0, PI/2);
  line(ax4, ay4+(i*gap), 0-(i*gap), dheight+(i*gap));
  translate(-tx, -ty+(dheight+dthick)/2);
  translate(tx, ty+(dheight+dthick)/2);
  stroke(160-i*5,120-i*5,i);
  line(0-(i*gap), 0-(i*gap), 0-(i*gap), dheight+(i*gap));
  line(0-(i*gap), ay1, ax1, ay1);
  arc(ax1, ay2, (darc+(i*gap))*2, (darc+(i*gap))*2, TWO_PI-PI/2, TWO_PI);
  line(dwidth+(i*gap), ay2, dwidth+(i*gap), ay3);
  arc(ax4, ay3, (darc+(i*gap))*2, (darc+(i*gap))*2, 0, PI/2);
  line(ax4, ay4+(i*gap), 0-(i*gap), dheight+(i*gap));
  translate(-tx, -ty-(dheight+dthick)/2);
  }
}
