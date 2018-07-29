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
    fill(#D3D3D3);
    rectMode(CENTER);
    rect(width/2 - 100, height/2, 100, 25, 5);
  }
  
  void swing_right(){
    fill(#D3D3D3);
    rectMode(CENTER);
    rect(width/2 + 100, height/2, 100, 25, 5);
  }
  
  void swing_up(){
    fill(#D3D3D3);
    rectMode(CENTER);
    rect(width/2, height/2 - 100, 25, 100, 5);
  }
  
  void swing_down(){
    fill(#D3D3D3);
    rectMode(CENTER);
    rect(width/2, height/2 + 100, 25, 100, 5);
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
