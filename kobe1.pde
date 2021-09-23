void setup() {
    size(1000, 880);
    textSize(16);
    PImage img;
    img = loadImage("mars_map-2.png");
    image(img,0,0,1000,800);
}

void draw(){
    int adaptivity;
    color c = get(mouseX, mouseY);
    adaptivity = (int)(green(c)*0+blue(c)*(-10)+red(c)*10);
    if(adaptivity<-2500)
    {
      fill(128);
      rect(5,5,138,45);
      fill(0,250,0);   
      text("Landing site of space craft!",5,5,140,220);
    }
    
    if(adaptivity<-1 && adaptivity>-2000)
    {
      fill(128);
      rect(5,5,138,45);
      fill(0,0,255);   
      text("Not suitable for imigration!",5,5,200,220);
    }
    
    if(adaptivity<500 && adaptivity>1)
    {
      fill(128);
      rect(5,5,138,45);
      fill(255,125,0);   
      text("Moderate location to imigrate!",5,5,140,220);
    }
    
    if(adaptivity>=500)
    {
      fill(128);
      rect(5,5,138,45);
      fill(250,0,0);   
      text("Suitable location to imigrate!",5,5,140,220);
    }
    
    if(adaptivity==0)
    {
      fill(128);
      rect(5,5,138,45);
      fill(0,0,0);   
      text("Out of bound!",5,5,140,220);
    }
    
    fill(0, 0, 255);  
    rect(0,780,180,20);
    fill(255,255,255);  
    text("Adaptivity="+adaptivity, 20, 780, 200,220);
}
