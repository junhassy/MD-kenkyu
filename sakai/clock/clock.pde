//2021.7.12-2021.7.14　　製作者：坂井旬

//１、title 「時計」
//２、制作のテーマはずっと見ていられるといこと。時計の秒針、分針、時針をプログラムで動かす。
//３、フレームレートを１にすると本物の時計と同じ動きをする。色にもこだわり、同じ色で描かれることのないようにした。
//　　draw内の背景を消すと色相環を描くことができる。透明度を用いるとなお面白い。
//４、線に円の上を描かせるようにプログラムするのに苦労した。cosとsinを用いて解決した。
//　　今後の課題は、この作品にインタラクションを加えること。（マウスをクリックすると時計の針に応じて時刻が表示されるようにするなど）
//５、「時計」というタイトルだが、時計だけでなく一つのアート作品としてみても面白いと言える作品だと思う。


float hue = 0;
float hue1 = 0;
int i;
float t;
float v;
float b;
int toumei = 100;

void setup (){
  background (0);
  size (600, 600);
  colorMode ( HSB, 360, 100, 100, 100);
  //frameRate (1);
}

void draw () {
  //background (0);
  background (t % 360, 30, 30, 50);
  stroke ((180 + t) % 360, 100, 100);
  //stroke ((frameCount / 10) % 361, 80, 40);
  strokeWeight (30);
  noFill();
  ellipse (width/2, height/2, 410, 410);
  
  hue = t % 361;
  stroke (hue, 100, 100, toumei);
  strokeWeight (5);
  
  translate (width / 2, height / 2);
  
  for (int i = 0; i < 10; i++)
  line (x1(t + i), y1(t + i),x2(t + i), y2(t + i));
  
  //秒針
  stroke (0, 0, 70, toumei);
  line (x7(b), y7(b),x8(b), y8(b));
  
  //長針
  stroke ((120 + hue) % 360, 100, 100, toumei);
  line (x3(t), y3(t),x4(t), y4(t));
  
  //短針
  hue1 = v/6;
  stroke (hue1 % 360, 100, 100, toumei);
  line (x5(v), y5(v),x6(v), y6(v));
  //point (x1(t), y1(t));
  //point (x2(t), y2(t));
  //point (x3(t), y3(t));
  //point (x4(t), y4(t));
  //point (x7(b), y7(b));
  //point (x8(b), y8(b));
  t ++;
  v ++;
  b ++;
  
  fill (0, 0, 80);
  noStroke();
  ellipse (0, 0, 10, 10);
}
  
  
float x1(float t) {
  return sin(t / 5) * 150;
}

float y1(float t) {
  return cos(t / 5) * 150;
}

float x2(float t) {
  return sin(t / 5) * 200;
}

float y2(float t) {
  return cos(t / 5) * 200;
}


//長針---------------------------
float x3(float t) {
  return -sin(t / 360) * 40;
}

float y3(float t) {
  return cos(t / 360) * 40;
}

float x4(float t) {
  return sin(t / 360) * 130;
}

float y4(float t) {
  return -cos(t / 360) * 130;
}

//短針---------------------------
float x5(float v) {
  return -sin(v / 4320) * 30;
}

float y5(float v) {
  return cos(v / 4320) * 30;
}

float x6(float v) {
  return sin(v / 4320) * 100;
}

float y6(float v) {
  return -cos(v / 4320) * 100;
}

//秒針--------------------------
float x7(float b) {
  return -sin(b / 30) * 50;
}

float y7(float b) {
  return cos(b / 30) * 50;
}

float x8(float b) {
  return sin(b / 30) * 150;
}

float y8(float b) {
  return -cos(b / 30) * 150;
}
