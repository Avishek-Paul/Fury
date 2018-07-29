class Player{
  ArrayList<Bear> bears = new ArrayList<Bear>();
  boolean dead;
  int xpos = width/2;    
  int ypos = height/2;
  int tick = 0;
  int time = 0;
  
  Player(){
    dead = false;
    fill(#F5D76E);
    ellipse(xpos, ypos, 75, 75);
  }
  
  void draw_player(){
    fill(#F5D76E);
    ellipse(xpos, ypos, 75, 75);
  }
  
  void swing_left(){
    Strike strike = new Strike(0);
  }
  
  void swing_right(){
    Strike strike = new Strike(2);
  }
  
  void swing_up(){
    Strike strike = new Strike(1);
  }
  
  void swing_down(){
    Strike strike = new Strike(3);
  }
  
  //---------------------------------------------------BEAR STUFF HERE----------------------------------------------------------------------------
  void add_bear(){
    bears.add(new Bear());
  }
  
  void check_status(){
    for ( int i = 0; i < this.bears.size()-1; i++){
      if(this.bears.get(i).xpos == this.xpos && this.bears.get(i).ypos == this.ypos){
        this.dead = true;
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
    }
    
  }
  
  
  
  
  
}
