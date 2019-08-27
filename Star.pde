class Star {
  float x;
  float y;
  float z;
  
  float px;
  float py;
  
  float s;
  float p;

  Star() {
    x=random(-width, width);
    y=random(-height, height);
    z=random(width);
    px=x;
    py=y;
    s=random(12,18);
    p=random(2,12);
    
  }

  void update() {
    z=z-p-speed;
    if (z<1) {
      z=width;
      x=random(-width, width);
      y=random(-height, height);
      px=x;
      py=y;
      s=random(4,32);
      p=random(4,16);
    }
  }

  void show() {
    fill(255);
    noStroke();
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height);
    float r = map(z, 0, width, s, 0);
 
    ellipse(sx, sy, r, r);
    
    float ax = px;
    float ay = py;
    for(int i=0;i<5;i++) {
      float c = map(i,0,4,8,96);
      float bx = map(i,0,4,px,sx);
      float by = map(i,0,4,py,sy);
      stroke(c);
      line(ax, ay, bx, by);
      ax=bx;
      ay=by;
    }
    
    /*
    stroke(64);
    line(px, py, sx, sy);
    */
  }
}