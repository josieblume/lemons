/*CREATED: MAY 18th
when life gives you lemons heehah*/

int nPics = 300;
PImage[] lemtest = new PImage[nPics];
int imageIndex = 0;

void setup() {
  size(600,600);
  for (int i = 0; i < 10; i++) {
    lemtest[i]= loadImage("darklemon000"+(i)+".png");
    frameRate(30);
  }
  for (int i = 10; i < 100; i++) {
    lemtest[i]= loadImage("darklemon00"+(i)+".png");
    frameRate(30);
  }
  for (int i = 100; i < 300; i++) {
    lemtest[i]= loadImage("darklemon0"+(i)+".png");
    frameRate(30);
  }
}
void draw() {
  image(lemtest[imageIndex], mouseX-250,mouseY-250);
  imageIndex = (imageIndex + 1) % lemtest.length;
}
