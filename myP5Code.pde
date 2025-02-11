//🟢setup Function - will run once
setup = function() {
    size(600, 400);
   
};
var fishMove= 0;
var jellyMove=0;
var turtleMove=0;


//🟢draw Function - will run on repeat
draw = function(){
   // drawFish=(fishX, fishY, fishColor);
    //drawJelly=(jellyX, jellyY, jellyColor);
    //drawTurtle=(turtleX, turtleY);
    //drawAnchor=(anchorX, anchorY);
    //drawApple=(appleX, appleY)
    
     background(255,255,255,0);
    
    drawFish(100+fishMove, 130, color(200,0,200)); 
    drawFish(150+fishMove, 100, color(0,200,200));
    drawFish(200+fishMove, 130, color(50,100,80));
    
    drawJelly(400+jellyMove, 100, color(12, 250, 235,200));
    drawJelly(350+jellyMove, 150, color(255, 51, 162,200));
    drawJelly(300+jellyMove, 100, color(12, 250, 235,200));
    drawJelly(200+jellyMove, 200, color(12, 250, 235,180));
    drawJelly(130+jellyMove, 200, color(255, 51, 162,150));
    
    drawTurtle(300+turtleMove,200);
     drawTurtle(350+turtleMove,240);
      drawTurtle(400+turtleMove,200);
    
    drawAnchor(350,370);
    
    drawApple(100,370)
    
    fishMove--;
    if (fishMove<-200){
      fishMove = +400
    }
    jellyMove--;
    if (jellyMove<-300){
        jellyMove = +500
    }
    turtleMove--;
    if (turtleMove<-350){
        turtleMove = +500
    }
    
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){

}

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("𓆝", fishX, fishY);
};

var drawJelly = function(jellyX, jellyY, jellyColor){
  textSize(70);
  fill(jellyColor);
  text("ଳ", jellyX, jellyY);
};

var drawTurtle = function(turtleX, turtleY, turtleColor){
  textSize(100);
  fill(turtleColor);
  text("𓆉", turtleX, turtleY);

};

var drawAnchor = function(anchorX, anchorY){
  textSize(100);
  text("⚓",anchorX, anchorY);
};

var drawApple = function(appleX, appleY){
  textSize(150);
  text("🍍",appleX, appleY);
};

