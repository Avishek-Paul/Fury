Player human;

void setup(){
  
  int width = 700;
  int height = 900;
  size(700, 900);
  background(#3498DB);
  
  drawBoard();
  human = new Player();
}

void draw(){
  
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

void keyPressed(){

  if(key==CODED){
    
    if(key==UP){
      human.swing_up();
    } 
    else if(key==DOWN){
      human.swing_down();
    }
    else if(key==LEFT){
      human.swing_left();
    }
    else if(key==RIGHT){ 
      human.swing_right();
    }
    
  }
  
  
}
