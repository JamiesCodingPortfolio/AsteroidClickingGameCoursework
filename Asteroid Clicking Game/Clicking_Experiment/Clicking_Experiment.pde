

//sets up program and loads in required information
void setup() {
  f.Setup();
  s.Startup();
}


//begins drawing and processing the program
void draw() {
  //Re-defines variables used within setup for use within the draw
  if (vis == 0){
    surface.setVisible(true);
    vis = 1;
  }
  else{}
  if (CST == 1){
    Menus.main();
  }
  else if(CST == 2){
    Settings();
  }
  else if (CST == 3){
    if (CG == 1){
      GameS.create_screen_1();
      GameS.difficulty_selection();
    }
    else if (CG == 2){
      GameG.Current_Game();
      for (int i = 0; i < station.length; i++){
        try{
        station[i].render();
        }
        catch (NullPointerException e){
        }
        GameG.Enemy_Spawn();

      }
      
      //not currently working - too much math
      //
      //if (fired == 1){
        
      //}
    }
    
  }
  else{
    CST = 1;
    Menus.main();
  }
}

//Press function - allows certain areas to be pressed
void mousePressed(){
  x = mouseX;
  y = mouseY;
  if (CST == 1){
    Clicks.Clicks();
  }
  else if (CST == 2){
    SettingsClicks();
  }
  else if (CST == 3){
    if(CG == 1){
      GameC.screen_1_clicks();
    }
    else if(CG == 2){
      
    }
  else{
    CST = 1;
    Clicks.Clicks();
  }
  println("Current X Resolution: " + Sx);
  println("Current Mouse position: " + x + ", " + y);
  println("Current CST: " + CST);
}
}

void mouseMoved(){
  fill(0);
  x = mouseX;
  y = mouseY;
  str(x);
  str(y);
  
  if (CST == 1){
    
  }
  else if (CST == 2){
    SettingsHover();
  }
  else{}
    
}
