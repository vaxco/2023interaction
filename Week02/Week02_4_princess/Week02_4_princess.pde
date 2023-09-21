PImage img,imgBox;
void setup(){
  size(600,600);
  img = loadImage("Cinderella.png");
  imgBox = loadImage("box.png");
}
void draw(){
  imageMode(CENTER);
  if(mousePressed){
    image(imgBox,mouseX,mouseY,300,200);
  }else{
  image(img,300,300, 220,300);
  }
}
