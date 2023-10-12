void setup(){
  size(400,400,P3D);//Processing的 3D功能
}
void draw(){
  background(#FFFFF2);
  pushMatrix(); //備份矩陣
    translate(mouseX,mouseY);//移動
    rotateY(radians(mouseX));//對Y軸轉動
    fill(0,255,0);
    box(100); //3D的方塊
    
    noFill(); //面不要填
    scale(2); //放大兩倍N
    box(100);
  popMatrix();//還原矩陣
}
