class Station{
  
  int Statx;
  int Staty;
  
  private Station(int Statx, int Staty){
    this.Statx = Statx;
    this.Staty = Staty;
  }
  
  void render(){
    image(stationImg,Statx, Staty);
  }
  
  //work in progress - math is very confusing - might not be finished before hand in due to sheer scale of system
  //void fire_laser(){
    
  //  //LP = Laser Position
  //  Math.angle(x,y,960,540);
  //  rotate(rotation);
  //  image(laserImg, LPx,LPy);
  //  rotate(0);
  //  fired = 1;
  //}
  
      
    
    
  
  
  
}
