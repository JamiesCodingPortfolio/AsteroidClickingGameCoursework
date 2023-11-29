class FirstTime {
  
  void Setup() {
    String [] first;
    try {
      first = loadStrings("FirstTime.txt");
      } 
      catch (NullPointerException e) {
      
      first = null;
    } 
    if (first == null){
      
      int disY = displayHeight;
      int disX = displayWidth;
      String disSX = str(disX);
      String disSY = str(disY);
      ArrayList<String> strings = new ArrayList<>();
      
      strings.add("//X Axis Resolution");
      strings.add(disSX);
      strings.add("//Y Axis Resolution");
      strings.add(disSY);
      strings.add("//Fullscreen (1 Enables fullscreen, 0 disables fullscreen)");
      strings.add("1");
      strings.add("//Framerate (Set to any whole number)");
      strings.add("144");
      
      String[] array = strings.toArray(new String[0]);
      String[] done = new String[1];
      String sinput = "Delete this file to reset default settings";
      done[0] = sinput;
      saveStrings("/data/settings.txt", array);
      saveStrings("/data/FirstTime.txt", done);
      
    }
    
  }
}
