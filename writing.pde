boolean white = false;
int strokeValueDraw = 4;
int strokeValueErase = 16;

void setup() {
  size(800, 480);
  background(255);
}

void draw() {
  if (white) {
    stroke(255);
    if (strokeValueErase >= 0) {
      strokeWeight(strokeValueErase);
    } else {
      strokeValueErase = 0;
      strokeWeight(strokeValueErase);
    }
  } else {
    stroke(0);
    if (strokeValueDraw >= 0) {
      strokeWeight(strokeValueDraw);
    } else {
      strokeValueDraw = 0;
      strokeWeight(strokeValueDraw);
    }
  }
  if (keyPressed) {
    white = !white;
  }
  if (mousePressed == true) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void mouseWheel(MouseEvent event) {
  int e = event.getCount();
  if (!white) {
    if (e < 0) {
      strokeValueDraw = strokeValueDraw + e*-1;
    } else {
      strokeValueDraw = strokeValueDraw + e*-1;
    }
  } else {
    if (e < 0) {
      strokeValueErase = strokeValueErase + e*-1;
    } else {
      strokeValueErase = strokeValueErase + e*-1;
    }
  }
}
