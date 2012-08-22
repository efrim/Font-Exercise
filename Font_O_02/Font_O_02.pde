int owidth = 80; //width of O
int oheight = 90; //height of O
int othick = 55; //thickness of O
int odense = 1; //density of points (lower = denser)
int gap = 2;
int layers = (othick/gap);
int[] ocir = new int[layers];
int input;
float spider; //randomness

void setup() {
  size(400,400);
  background(0);
}

void draw() {
  background(0);
  translate(200,200);
  for(int i=0 ; i<layers ; i++){
    ocir[i] = int((PI*(oheight+(i*gap)))/odense);
    input = 2;
  }
  stroke(240);
  noFill();
  for(int i=0 ; i<layers ; i++){
    for(int j=0; j<ocir[i] ; j++){
      spider = ((i+11)/input);
      float x = (j*TWO_PI/ocir[i]);
      point(random(-spider,spider)+(owidth+(i*gap))*(sin(x)), random(-spider,spider)+(oheight+(i*gap))*(cos(x)));
    }
  }
}
