class Player{
  ArrayList<Bear> bears = new ArrayList<Bear>();
  boolean dead;
  int xpos = width/2;    
  int ypos = height/2;
  int size = 75;
  int time = 0;
  int points = 0;
  
  Player(){
    dead = false;
    fill(#F5D76E);
    ellipse(xpos, ypos, size, size);
  }
  
  void draw_player(){
    fill(#F5D76E);
    ellipse(xpos, ypos, size, size);
  }
  
  void swing_left(){
    Strike strike = new Strike(0);
    check_swing(strike);
  }
  
  void swing_right(){
    Strike strike = new Strike(2);
    check_swing(strike);
  }
  
  void swing_up(){
    Strike strike = new Strike(1);
    check_swing(strike);
  }
  
  void swing_down(){
    Strike strike = new Strike(3);
    check_swing(strike);
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
        fill(#B20000);
        ellipse(this.xpos, this.ypos, size,size);
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
    
    player.draw_player();
    if(!dead){
      add_bear();
      move_bears();
      show_bears();
      check_status();
      display_points();
    }
    
  }
  
  
  
  
  
}
