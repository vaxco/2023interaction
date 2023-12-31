PImage img;
int [][] pos={{84,456},{93,491},{110,524},{117,457},{126,490},{143,524},{151,457},{160,490},{177,524},{187,456},{195,491},{211,524},{219,457},{229,490},{246,525},{254,456},{263,490},{281,524},{288,457},{297,490},{314,524},{322,456},{331,490},{356,456},{366,491},{390,457}};//二微陣列
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
  fill(0,255,0, 128); //半透明的綠色
  for(int i=0;i<26;i++){
    rect(pos[i][0],pos[i][1],28,30,5);
  }
}
void mousePressed(){
  println(mouseX,mouseY); //定位、印出mouse座標
}
