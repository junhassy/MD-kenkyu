let angle = 0;
let sketchbrown;
let sketchpink;
let whitepink;
let sketchyellow;
function setup(){
    sketchbrown = color(115, 66, 41);
    sketchpink = color(244, 173, 199);
    whitepink = color(252, 238, 235);
    sketchyellow = color(253, 215, 0);
    createCanvas(960, 540);
    background(255);
    strokeWeight(100);
    stroke(sketchbrown);
    line(480, 540, 480, 300);
    strokeWeight(20);
    line(480, 300, 200, 150);
    line(480, 300, 760, 150);
    line(480, 280, 480, 50);
    line(190, 200, 250, 185);
    line(300, 200, 300, 140);
    line(290, 250, 350, 235);
    line(780, 200, 720, 185);
    line(650, 200, 650, 140);
    line(680, 250, 620, 235);
    line(470, 100, 420, 60);
    line(470, 180, 420, 140);
    line(490, 100, 540, 60);
    line(490, 180, 540, 140);
    noStroke();
}

function draw(){
    if(mouseIsPressed) {
        if(mouseButton == LEFT) {
            angle+=5;
            let val = cos(radians(angle)) * 12.0;
            for(let a = 0;a < 360;a+=75) {
                let xoff = cos(radians(a)) * val;
                let yoff = sin(radians(a)) * val;
                fill(sketchpink);
                ellipse(mouseX + xoff, mouseY + yoff, val, val);
            }
            fill(sketchyellow);
            ellipse(mouseX, mouseY, 5, 5);
        }
    else if(mouseButton == RIGHT) {
            angle+=5;
            let val = cos(radians(angle)) * 12.0;
            for(let a = 0;a < 360;a+=75) {
                let xoff = cos(radians(a)) * val;
                let yoff = sin(radians(a)) * val;
                fill(whitepink);
                ellipse(mouseX + xoff, mouseY + yoff, val, val);
            }
            fill(sketchyellow);
            ellipse(mouseX, mouseY, 5, 5);
        }
    }
}

