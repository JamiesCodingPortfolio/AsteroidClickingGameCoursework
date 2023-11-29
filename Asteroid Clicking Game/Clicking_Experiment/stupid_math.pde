class calculation{
    
  void angle(float MouseX, float MouseY, float ObjectX, float ObjectY){
    //Squares the numbers
    float DifferenceX = MouseX - ObjectX;
    float DifferenceY = MouseY - ObjectY;
    float Adjacent = DifferenceX;
    float Opposite = DifferenceY;
    //Returns hypotenuse
    angleresult = (Opposite/Adjacent);
    println(angleresult);
    angleresult = atan(angleresult);
    println(angleresult);
    angleresult = degrees(angleresult);
    println(angleresult);
    if(angleresult > 0){
      rotation = 360 + angleresult;
    }
    else{
      rotation = angleresult;
    }
  }
  void wait(int seconds){
    
    waiting = seconds * 144;
  }
}
