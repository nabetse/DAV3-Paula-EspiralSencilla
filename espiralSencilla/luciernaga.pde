class luciernaga {
  PVector position;
  PImage [] luciernagas = new PImage [5];

  // Es como el setup() del codigo principal
  luciernaga() { 
    for ( int i = 0; i<luciernagas.length; i++ ) {
      luciernagas[i] = loadImage( "luci" + (i+1) + ".png" );
    } 
    position = new PVector(random(width), random(height));
  }

  void draw(float x, float y) {
    int cualLuci = int(random(0, 5));
    position.x = x - luciernagas[cualLuci].width/2;
    position.y = y - luciernagas[cualLuci].height/2;
    image(luciernagas[cualLuci], position.x, position.y);
  }
} 