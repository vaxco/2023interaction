PImage img;
//int [][] pos={{84,456},{93,491},{110,524},{117,457},{126,490},{143,524},{151,457},{160,490},{177,524},{187,456},{195,491},{211,524},{219,457},{229,490},{246,525},{254,456},{263,490},{281,524},{288,457},{297,490},{314,524},{322,456},{331,490},{356,456},{366,491},{390,457}};//二微陣列
int [][] pos={{93,490},{246,524},{177,525},{161,490},{151,457},{195,490},{229,491},{263,490},{322,457},{298,490},{332,490},{366,490},{314,524},{281,524},{356,457},{390,457},{82,457},{185,457},{127,490},{219,456},{288,456},{212,524},{118,457},{144,525},{254,457},{110,525}};
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
    if(typing.charAt(0)-'a' ==i) rect(pos[i][0], pos[i][1],28 , 30, 5);
    if(pressed[i]) rect(pos[i][0],pos[i][1],28,30,5);
  }
  fill(0);//黑色的字
  textSize(50);
  text(typing,50,50);
  text(typing.charAt(0),50,100);//現在要打的字,是typing.charAt(0)
}
String typing = "printf";
boolean [] pressed = new boolean[26]; //Java的陣列宣告,都是0或false
void keyPressed(){
  if(key>='a'&&key<='z') pressed[key-'a'] = true ;
}
void keyReleased(){
  if(key>='a'&&key<='z') pressed[key-'a'] = false;
}
void mousePressed(){
  println(mouseX,mouseY); //定位、印出mouse座標
}
