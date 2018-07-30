class Player{
  ArrayList<Bear> bears = new ArrayList<Bear>();
  boolean dead;
  int xpos = width/2;    
  int ypos = height/2;
  int size = 75;    
  int points = 0;
  int direction;
  
  PImage player_left = loadImage("player_left.png");
  PImage player_up = loadImage("player_up.png");
  PImage player_right = loadImage("player_right.png");
  PImage player_down = loadImage("player_down.png");
  PImage player_dead = loadImage("player_dead.png");

  Player(){
    dead = false;
    imageMode(CENTER);
    image(player_down, xpos, ypos);
  }
  
  void draw_player(){
    if(!dead){
      imageMode(CENTER);
      switch(direction){
        case 0:
          image(player_left, xpos, ypos);
          break;
        case 1:
          image(player_up, xpos, ypos);
          break;
        case 2:
          image(player_right, xpos, ypos);
          break;
        case 3:
          image(player_down, xpos, ypos);
          break;
      }
      
    } else {
        imageMode(CENTER);
        image(player_dead, xpos, ypos);
    }
  }
  
  
  void swing_left(){
    Strike strike = new Strike(0);
    check_swing(strike);
    direction = 0;
    draw_player();
  }
  
  void swing_right(){
    Strike strike = new Strike(2);
    check_swing(strike);
    direction = 2;
    draw_player();
  }
  
  void swing_up(){
    Strike strike = new Strike(1);
    check_swing(strike);
    direction = 1;
    draw_player();
  }
  
  void swing_down(){
    Strike strike = new Strike(3);
    check_swing(strike);
    direction = 3;
    draw_player();
  }
  
  void check_swing(Strike strike){
    for( int i=0; i<this.bears.size()-1;i++){
      Bear bear = this.bears.get(i);
      if(bear.xpos == strike.xpos && bear.ypos == strike.ypos){
        bear.dead = true;
        bears.remove(i);
        points++;
      }
    }
  }
  
  void display_points(){
    fill(50);
    rectMode(CENTER);
    textSize(50);
    text(str(points), 50, 50, 100, 100);  // Text wraps within text box
  }
  
  //---------------------------------------------------BEAR STUFF HERE----------------------------------------------------------------------------
  void add_bear(){
    bears.add(new Bear());
  }
  
  void check_status(){
    for ( int i = 0; i < this.bears.size()-1; i++){
      if(this.bears.get(i).xpos == this.xpos && this.bears.get(i).ypos == this.ypos){
        this.dead = true;
        draw_player();
      }
    }
  }
  
  void move_bears(){
    for( int i=0; i<this.bears.size()-1;i++){
      Bear bear = this.bears.get(i);
      bear.move();
    }
  }
  
  void show_bears(){
    for( int i=0; i<this.bears.size()-1;i++){
      Bear bear = this.bears.get(i);
      bear.display();
    }
  }
  
  //-------------------------------------------------------------------MAIN CALL FUNCTION--------------------------------------------------------------------------------
  
  void update(){
    draw_player();
    if(!dead){
      add_bear();
      move_bears();
      show_bears();
      check_status();
      display_points();
    }
  }
  
  
  
  
  
}
