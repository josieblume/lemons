/*CREATED: MAY 18th
when life gives you lemons hahhee*/

int nPics = 300;
PImage[] lemface = new PImage[nPics];
int imageIndex = 0;

void setup() {
  size(600,600);
  background(175,0,255);
  for (int i = 0; i < 10; i++) {
    lemface[i]= loadImage("face000"+(i)+".png");
    frameRate(30);
  }
  for (int i = 10; i < 100; i++) {
    lemface[i]= loadImage("face00"+(i)+".png");
    frameRate(30);
  }
  for (int i = 100; i < 300; i++) {
    lemface[i]= loadImage("face0"+(i)+".png");
    frameRate(30);
  }
}

void draw() {
  image(lemface[imageIndex], 0,0);
  imageIndex = (imageIndex + 1) % lemface.length;
}
