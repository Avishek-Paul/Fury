Player player;

int game_time = 0;
int attack_time = 0;
int attack_speed = 150;

boolean done = false;
void setup(){
  
  int width = 700;
  int height = 700;
  size(700, 700);
  
  drawBoard();
  player = new Player();
  delay(1000);
}

void draw(){
  
  float speed = map(player.points, 0, 250, 750, 250);
  
  if(!player.dead){
    if(millis()-game_time>=speed){
      drawBoard();
      player.update();
      game_time = millis();
    }
  }
  
}

void drawBoard(){
  background(#3498DB);
  fill(#FFFFFF);
  rectMode(CENTER);  
  
  for(int i=0; i<8; i++){
    rect(50 + i*100, height/2 , 100, 100, 7);
  }
  
  for(int i=0; i<7; i++){
    rect(width/2, 50 + i*100, 100, 100, 9);
  }
}

void keyPressed() {
  if (key == CODED && millis()-attack_time >= attack_speed) {
    
    if (keyCode == UP) {
      player.swing_up();
    } else if (keyCode == DOWN) {
      player.swing_down();
    } else if (keyCode == LEFT) {
      player.swing_left();
    } else if (keyCode == RIGHT) {
      player.swing_right();
    }
    attack_time = millis();
  }
  
  if(player.dead && (key==RETURN || key==ENTER)){
      player = new Player();
  }
    
}




  
