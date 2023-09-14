//互動模式
void setup(){
  size(500,500);
  background(255); //白色背景
}

void draw(){ //畫圖 每秒60次
  if(mousePressed){ //如果mouse有按下去
    line(mouseX,mouseY,pmouseX,pmouseY);
   }//畫線(滑鼠座標mouseX,mouseY, 到之前滑鼠座標pmouseX,pmouseY);
}

int w=1;
void keyPressed(){//如果按下keyboard的key
  if(key=='1') stroke(255,0,0); //按下1變紅色
  if(key=='2') stroke(0,255,0); //按下2變綠色
  if(key=='3') stroke(0,0,255); //按下3變藍色
  if(key=='s'|| key=='S') save("output.png"); 
  if(key=='+') strokeWeight(++w);
  if(key=='-') strokeWeight(--w);
  println(w);
}
