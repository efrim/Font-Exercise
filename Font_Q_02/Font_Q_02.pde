float i = 50;

void setup() {
  size(400,400);
}

void draw() {
  background(200);
    smooth();
    noFill();
    stroke(100);
    strokeWeight(1);
    translate(-5,-10);
    line(200,282,140,314);
    bezier(140,314,124,323,134,337,147,324);
    bezier(147,324,182,290,217,322,255,343);
    bezier(255,343,296,364,344,365,360,308);
    line(360,308,354,308);
    bezier(354,308,331,364,248,293,179,302);
    line(179,302,225,277);
    bezier(225,277,264,266,297,229,297,175);
    bezier(297,175,297,121,262,65,183,65);
    bezier(183,65,105,65,70,121,70,175);
    bezier(70,175,70,229,105,282,200,282);
  
    bezier(184,73,80,73,80,275,184,275);
    bezier(184,275,288,275,288,73,184,73);
    float t = i / float(50);
    float x = bezierPoint(354, 331, 248, 179, t);
    float y = bezierPoint(308, 264, 293, 302, t);
    ellipse(x,y,10,10);
    translate(5,10);
}
