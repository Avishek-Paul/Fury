Player player;

int time = 0;
boolean done = false;
void setup(){
  
  int width = 700;
  int height = 900;
  size(700, 900);
  background(#3498DB);
  
  drawBoard();
  player = new Player();
}

void draw(){
  if(millis()-time>=750){
    drawBoard();
    player.update();
    time = millis();
  }
}

void drawBoard(){
  fill(#FFFFFF);
  rectMode(CENTER);  
  
  for(int i=0; i<8; i++){
    rect(50 + i*100, height/2 , 100, 100, 7);
  }
  
  for(int i=0; i<7; i++){
    rect(width/2, 150 + i*100, 100, 100, 9);
  }
}

void keyPressed() {
  if (key == CODED) {
    
    if (keyCode == UP) {
      player.swing_up();
    } else if (keyCode == DOWN) {
      player.swing_down();
    } else if (keyCode == LEFT) {
      player.swing_left();
    } else if (keyCode == RIGHT) {
      player.swing_right();
    } 
    
  } 
}




  
