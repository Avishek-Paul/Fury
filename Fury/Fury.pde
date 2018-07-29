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
  if(millis()-time>=2000){
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

  
