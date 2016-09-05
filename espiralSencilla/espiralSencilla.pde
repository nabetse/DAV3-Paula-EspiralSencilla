
boolean info = true;
float velAngular = 0.001;
int cx = 0;
int cy = 0;
float FValueB = 6.65;// 2*PI; //6.0; // 1.4;
float angle = 0.0;
float x1 = 0.0;
float x2 = 0.0;
float y1 = 0.0;
float y2 = 0.0;
int myDelay = 25;
int lastTime = 0;
boolean odd = false;
int refresh = 0;
boolean continued = false;


void setup() {
  size(1920, 1080);
  strokeWeight(1);
  fill(255, 255, 255);
  stroke(255, 255, 255, 5);
  background(0, 0, 0);
  frameRate(1000/myDelay);
}

void draw() {
  cx = mouseX;
  cy = mouseY;
  background(255);

  stroke(255, 0, 0);


  for (int i = 10; i >= 0; i = i-1) {
    //FValueB *= -1;
  //for (int i = 0; i <= 10; i++) {
    angle = FValueB * i;
    x2 = cx + (FValueB * angle) * cos(angle);
    y2 = cy + (FValueB * angle) * sin(angle);

    if (i == 10) {
      x1 = x2;
      y1 = y2;
    } else {
      line(x1, y1, x2, y2);
      x1 = x2;
      y1 = y2;
    }
  }
  
  //cx = (int)x2;
  //cy = (int)y2;

  if (mousePressed) {
    stroke(0, 0, 255);
    //FValueB *= -1;
    for (int i = 0; i <= 10; i++) {
      angle = FValueB * i;
      x2 = cx - (FValueB * angle) * cos(angle);
      y2 = cy - (FValueB * angle) * sin(angle);

      if (i == 0) {
        x1 = x2;
        y1 = y2;
      } else {
        line(x1, y1, x2, y2);
        x1 = x2;
        y1 = y2;
      }
    }
    /*
    for (int i = 10; i >= 0; i = i-1) {
     //for (int i = 0; i < 10; i++) {
     angle = FValueB * i;
     x2 = cx + (FValueA + FValueB * angle) * cos(angle);
     y2 = cy + (FValueA + FValueB * angle) * sin(angle);
     
     if (i == 10) {
     x1 = x2;
     y1 = y2;
     } else {
     line(x1, y1, x2, y2);
     x1 = x2;
     y1 = y2;
     }
     }
     */
  }
}