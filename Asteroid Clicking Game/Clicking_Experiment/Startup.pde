class Start {

  
  
  void Startup() {

    //Loads required settings for program to function
    
    //CG = Current game
    CG = 1;
    //Current Screen Time
    CST = 1;
    //vis = whether the program is the first on top or not
    vis = 0;
    //Fullscreen Loaded
    Fl = 0;
    surface.setTitle("Station Asteroid Defender");
    //Loads user defined settings
    settings = loadStrings("settings.txt");
    resolutionX = settings[1];
    resolutionY = settings[3];
    //Make resolution sizes to the rest of the program, allows scalability
    Sx = int(resolutionX);
    Sy = int(resolutionY);
    fullscreen = settings[5];
    frames = settings[7];
    println("Current resolution: " + Sx + "," + Sy);
    fps = int(frames);
    int full = int(fullscreen);
    surface.setSize(Sx, Sy);
    chighscore = loadStrings("highscores.txt");
    currenthighscore = chighscore[0];

    //Images for settings
    Fs0 = loadImage("Fullscreen-1.png");
    FullscreenImg = Fs0;
    FullscreenImg.resize((1600/4), (900/4));
    tick = loadImage("check-symbol.png");
    tick.resize(80, 80);
    //Images for ingame
    backgroundImg = loadImage("background.jpg");
    backgroundImg.resize(1920,1080);
    asteroidImg = loadImage("asteroid.png");
    crosshairImg = loadImage("crosshair.png");
    stationImg = loadImage("station.png");
    stationImg.resize(102,102);
    //just for an animated gif lol
    for (int e = 0; e < 11; e ++){
      explosionImg[e] = loadImage("explosion-" + (e+1) + ".gif");
      explosionImg[e].resize(102,102);
    }
    //
    laserImg = loadImage("Laser.png");
    for(int i = 0; i < station.length; i++){
      station[i] = new Station(((Sx/2)-51),((Sy/2)-51));
    }
    Crosshair[0] = new crosshair(mouseX-50,mouseY-50);

    delay(250);

    //PSurface library is used within this IF statement here as Processing does not allow built-in functions (e.g. fullscreen();)
    if (full == 1) {

      surface.placePresent(1);
      tickTrue = 1;
    } else {
      surface.setResizable(true);
      surface.setLocation(1, 1);
    }

    frameRate(fps);
    font = loadFont("Calibri-48.vlw");
    textFont(font, 28);
  }
}
