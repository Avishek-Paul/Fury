
int game_time = 0;
int attack_time = 0;
int attack_speed = 150;

Player player;

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
  PImage bg_ice = loadImage("bg_ice.png");  
  background(bg_ice);
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




  
