PImage img;
void setup(){
  size(800,600);
  img = loadImage("keyboard.png");
  rectMode(CENTER);//用中心點來畫四邊形
}
void draw(){
  background(#FFFFF2);//清空殘影
  image(img,0,600-266);
  fill(255,0,0, 128); //128為半透明
  rect(mouseX,mouseY,28,30,5);//5四邊形變圓滑
}
void mousePressed(){
  println(mouseX,mouseY); //定位、印出mouse座標
}
