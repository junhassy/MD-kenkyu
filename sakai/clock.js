let sketchhue = 0;
let hue1 = 0;
let i = 0;
let t = 0;
let v = 0;
let b = 0;
let toumei = 100;
function setup(){
    background(0);
    createCanvas(600, 600);
    colorMode(HSB, 360, 100, 100, 100);
}

function draw(){
    background(t % 360, 30, 30, 50);
    stroke((180 + t) % 360, 100, 100);
    strokeWeight(30);
    noFill();
    ellipse(width / 2, height / 2, 410, 410);
    sketchhue=t % 361;
    stroke(sketchhue, 100, 100, toumei);
    strokeWeight(5);
    translate(width / 2, height / 2);
    for(let i = 0;i < 10;i++) line(x1(t + i), y1(t + i), x2(t + i), y2(t + i));
    stroke(0, 0, 70, toumei);
    line(x7(b), y7(b), x8(b), y8(b));
    stroke((120 + sketchhue) % 360, 100, 100, toumei);
    line(x3(t), y3(t), x4(t), y4(t));
    hue1=v / 6;
    stroke(hue1 % 360, 100, 100, toumei);
    line(x5(v), y5(v), x6(v), y6(v));
    t ++;
    v ++;
    b ++;
    fill(0, 0, 80);
    noStroke();
    ellipse(0, 0, 10, 10);
}

function x1(t){
    return sin(t / 5) * 150;
}

function y1(t){
    return cos(t / 5) * 150;
}

function x2(t){
    return sin(t / 5) * 200;
}

function y2(t){
    return cos(t / 5) * 200;
}

function x3(t){
    return -sin(t / 360) * 40;
}

function y3(t){
    return cos(t / 360) * 40;
}

function x4(t){
    return sin(t / 360) * 130;
}

function y4(t){
    return -cos(t / 360) * 130;
}

function x5(v){
    return -sin(v / 4320) * 30;
}

function y5(v){
    return cos(v / 4320) * 30;
}

function x6(v){
    return sin(v / 4320) * 100;
}

function y6(v){
    return -cos(v / 4320) * 100;
}

function x7(b){
    return -sin(b / 30) * 50;
}

function y7(b){
    return cos(b / 30) * 50;
}

function x8(b){
    return sin(b / 30) * 150;
}

function y8(b){
    return -cos(b / 30) * 150;
}

