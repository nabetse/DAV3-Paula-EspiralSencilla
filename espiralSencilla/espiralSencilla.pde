
PVector centroide = new PVector(0, 0);
PVector posActual = new PVector(0, 0);
PVector posAnterior = new PVector(0, 0);
float factorRot = 6.65;
float angulo = 0.0;

luciernaga luci;

void setup() {
  size(1280, 720);
  luci = new luciernaga();
}

void draw() {
  centroide.x = mouseX;
  centroide.y = mouseY;
  background(255);

  stroke(255, 0, 0);


  for (int i = 10; i >= 0; i = i-1) {
    angulo = factorRot * i;
    posActual.x = centroide.x + (factorRot * angulo) * cos(angulo);
    posActual.y = centroide.y + (factorRot * angulo) * sin(angulo);

    if (i == 10) {
      posAnterior.x = posActual.x;
      posAnterior.y = posActual.y;
    } else {
      line(posActual.x, posActual.y, posAnterior.x, posAnterior.y);
      posAnterior.x = posActual.x;
      posAnterior.y = posActual.y;
    }
  }
  
  luci.draw(posActual.x, posActual.y);
}