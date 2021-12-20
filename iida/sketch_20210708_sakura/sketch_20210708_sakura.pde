 int angle = 0;
 color brown=color(115,66,41);//茶色
 color pink=color(244,173,199);//ピンク
 color whitepink=color(252,238,235);//薄ピンク
 color yellow=color(253,215,0);//黄色
 

void setup(){//木を描く
  size(960,540);
  background(255);
   strokeWeight(100);
   stroke(brown);
  line(480,540,480,300);
  strokeWeight(20);
  line(480,300,200,150);
  line(480,300,760,150);
  line(480,280,480,50);
  line(190,200,250,185);
  line(300,200,300,140);
  line(290,250,350,235);
  line(780,200,720,185);
  line(650,200,650,140);
  line(680,250,620,235);
  line(470,100,420,60);
  line(470,180,420,140);
  line(490,100,540,60);
  line(490,180,540,140);
  noStroke();

}

void draw(){
  if(mousePressed){
    if(mouseButton==LEFT){//左クリックでピンクの花を作る
    angle += 5;
    float val = cos(radians(angle)) * 12.0;
    for (int a = 0; a < 360; a += 75) {
      float xoff = cos(radians(a)) * val;
      float yoff = sin(radians(a)) * val;
      fill(pink);
      ellipse(mouseX + xoff, mouseY + yoff, val, val);
    }
    fill(yellow);
    ellipse(mouseX, mouseY, 5, 5);
  }
  else if(mouseButton==RIGHT){//右クリックで薄ピンクの花を作る
     angle += 5;
    float val = cos(radians(angle)) * 12.0;
    for (int a = 0; a < 360; a += 75) {
      float xoff = cos(radians(a)) * val;
      float yoff = sin(radians(a)) * val;
      fill(whitepink);
      ellipse(mouseX + xoff, mouseY + yoff, val, val);
    }
    fill(yellow);
    ellipse(mouseX, mouseY, 5, 5);
  }
}
}
//タイトル「桜」
//コンセプト：誰でも自由に作れる、世界で一本しかない自分だけの桜を作れる
//工夫：桜に見えるように色使いを工夫した、桜の色を2種類用意したことで、より自由な桜を作ることができる
//苦労した点：木を作るのが大変だった、桜を表現するのが難しかった
//課題：動きをつけて、ストーリー性のある作品を作りたかった、薄いピンクが背景で見えずらくなってしまった
