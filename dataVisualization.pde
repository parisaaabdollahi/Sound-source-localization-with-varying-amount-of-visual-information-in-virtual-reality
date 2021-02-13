PImage worldImage , startImage , backicon ;
Table table;
PImage upInfo , downInfo;
float scr;
float scale = 1;
float xPan = 650;
float yPan = 325;
boolean zoomIn =false;
boolean zoomOut= false;
boolean panLeft = false;
boolean panRight = false;
boolean panUp =false;
boolean panDown =false;
void setup()
{
  size(1300,650);
  scr=0;

  startImage=loadImage("startImage2.jpg");
  worldImage=loadImage("background4.jpg");
  backicon=loadImage("backicon.png");
   
  
    table = loadTable("localizationData.csv", "header");
 
  upInfo = loadImage("up info.jpg");
   downInfo = loadImage("down info.jpg");
  
}

void draw()
{


  if(scr==0)
  {
     background(startImage);
         
     
       if (mouseX >1007 && mouseX < 1277 && mouseY > 534 && mouseY < 615)
    {
       
      if (mousePressed)
      {
        scr = 1;
      }
    }
     
  }
    
    
    else if (scr==1)
    {
 
  
translate(width/2 , height/2);
scale(scale);
translate(-xPan , -yPan);
 
     background(0);
    image(worldImage, 0, 0);
    image(backicon, 50, 60);
    
    if (mousePressed)
    {
     if(mouseX >50 && mouseX < 100 && mouseY > 60 && mouseY < 110)
     {
       scr=0;
     }
      
    }
  for (TableRow row : table.rows()) {
    
  float visualVirtualHMDazimuth= row.getFloat("VisualVHazimuth");
  float visualVirtualHMDelevation= row.getFloat("VisualVHelevation");
  float VisualRealazimuth= row.getFloat("VisualRealazimuth");
  float VisualRealelevation= row.getFloat("VisualRealelevation");
   float AccousticVHmdnoLSazimuth= row.getFloat("AccousticVHmdnoLSazimuth");
   float AccousticVHmdnoLSelevation= row.getFloat("AccousticVHmdnoLSelevation");
 float accousticVirtualHmdLaserazimuth= row.getFloat("accousticVirtualHmdLaserazimuth");
   float accousticVirtualHmdLaserelevation= row.getFloat("accousticVirtualHmdLaserelevation");
float accousticVHmdazimuth= row.getFloat("accousticVHmdazimuth");
   float accousticVHmdelevation= row.getFloat("accousticVHmdelevation");
 float accousticRealazimuth= row.getFloat("accousticRealazimuth");
   float accousticRealelevation= row.getFloat("accousticRealelevation");
   float accousticBlindHmdazimuth= row.getFloat("accousticBlindHmdazimuth");
   float accousticBlindHmdelevation= row.getFloat("accousticBlindHmdelevation");
   float accousticBlindazimuth= row.getFloat("accousticBlindazimuth");
   float accousticBlindelevation= row.getFloat("accousticBlindelevation");
  

 float resX= map(visualVirtualHMDazimuth,-100, 100, 0,width);
 float resY= map(visualVirtualHMDelevation,60, -60, 0,height);
 stroke(255, 255, 255);
  fill(32, 35, 191);
    circle(resX, resY,11); 
 
 float resX2= map(VisualRealazimuth,-100, 100, 0,width);
 float resY2= map(VisualRealelevation,60, -60, 0,height);
 stroke(255, 255, 255);
  fill(64, 224, 63);
    circle(resX2, resY2,11); 
  
     float resX3= map(AccousticVHmdnoLSazimuth,-100, 100, 0,width);
 float resY3= map(AccousticVHmdnoLSelevation,60, -60, 0,height);
 stroke(255, 255, 255);
  fill(224, 64, 155);
    circle(resX3, resY3,11); 
    
    float resX4= map(accousticVirtualHmdLaserazimuth,-100, 100, 0,width);
 float resY4= map(accousticVirtualHmdLaserelevation,60, -60, 0,height);
 stroke(255, 255, 255);
  fill(255, 102, 0);
    circle(resX4, resY4,11); 
      
     float resX5= map(accousticVHmdazimuth,-100, 100, 0,width);
 float resY5= map(accousticVHmdelevation,60, -60, 0,height);
 stroke(255, 255, 255);
  fill(138, 71, 194);
    circle(resX5, resY5,11);   
    
    float resX6= map(accousticRealazimuth,-100, 100, 0,width);
 float resY6= map(accousticRealelevation,60, -60, 0,height);
 stroke(255, 255, 255);
  fill(191, 31, 30);
    circle(resX6, resY6,11);  
    
    float resX7= map(accousticBlindHmdazimuth,-100, 100, 0,width);
 float resY7= map(accousticBlindHmdelevation,60, -60, 0,height);
 stroke(255, 255, 255);
  fill(31, 191, 168);
    circle(resX7, resY7,11); 
    
    float resX8= map(accousticBlindazimuth,-100, 100, 0,width);
 float resY8= map(accousticBlindelevation,60, -60, 0,height);
 stroke(255, 255, 255);
  fill(0, 102, 0);
    circle(resX8, resY8,11); 
    

  }
   image(upInfo, 0, 0);
   image(downInfo, 0, 600);
  
      if (mousePressed)
      {
          if (mouseX >31 && mouseX < 259 && mouseY > 0 && mouseY < 50)
        {
           scr=2;
        }
        
      }
      
      
      if (mousePressed)
      {
          if (mouseX >319 && mouseX < 475 && mouseY > 0 && mouseY < 50)
        {
           scr=3;
        }
        
      }
      
      
      if (mousePressed)
      {
          if (mouseX >554 && mouseX < 731 && mouseY > 0 && mouseY < 50)
        {
           scr=4;
        } 
      }
      
      if (mousePressed)
      {
          if (mouseX >806 && mouseX < 1252 && mouseY > 0 && mouseY < 50)
        {
           scr=5;
        } 
      }
      
       if (mousePressed)
      {
          if (mouseX >31 && mouseX < 301 && mouseY > 600 && mouseY < 650)
        {
           scr=6;
        } 
      }
      
      if (mousePressed)
      {
          if (mouseX >362 && mouseX < 619 && mouseY > 600 && mouseY < 650)
        {
           scr=7;
        } 
      }
      
       if (mousePressed)
      {
          if (mouseX >688 && mouseX < 883 && mouseY > 600 && mouseY < 650)
        {
           scr=8;
        } 
      }
      
   if (mousePressed)
      {
          if (mouseX >937 && mouseX < 1261 && mouseY > 600 && mouseY < 650)
        {
           scr=9;
        } 
      }
      
    }
 
 if(scr==2)
 {
    translate(width/2 , height/2);
  scale(scale);
  translate(-xPan , -yPan);

  background(0);
  image(worldImage, 0, 0);
    image(backicon, 50, 20);
    
    textSize(36);
text("Visual Virtual HMD", 900, 50); 
 fill(32, 35, 191);

 textSize(20);
text("Results of all 10 participants in Visual Virtual HMD Condition", 40, 620); 
 fill(32, 35, 191);


    if (mousePressed)
    {
     if(mouseX >50 && mouseX < 100 && mouseY > 20 && mouseY < 70)
     {
       scr=1;
     }
      
    }
  for (TableRow row : table.rows()) {
  float VisualVHazTotal= row.getFloat("VisualVHazTotal");
  float VisualVHelTotal= row.getFloat("VisualVHelTotal");
   
   float resX= map(VisualVHazTotal,-100, 100, 0,width);
 float resY= map(VisualVHelTotal,60, -60, 0,height);
 stroke(255, 255, 255);
 fill(32, 35, 191);
    circle(resX, resY,11); 
   
   
      }

      
      }
      
      
      
      if(scr==3)
 {
   
  translate(width/2 , height/2);
  scale(scale);
  translate(-xPan , -yPan);

  background(0);
  image(worldImage, 0, 0);
    image(backicon, 50, 20);
    
    textSize(36);
text("Visual Real", 1000, 50); 
fill(64, 224, 63);

 textSize(20);
text("Results of all 10 participants in Visual Real Condition", 40, 620); 
fill(64, 224, 63);
    
    if (mousePressed)
    {
     if(mouseX >50 && mouseX < 100 && mouseY > 20 && mouseY < 70)
     {
       scr=1;
     }
      
    }
  for (TableRow row : table.rows()) {
  float VisualRealazTotal= row.getFloat("VisualRealazTotal");
  float VisualRealelTotal= row.getFloat("VisualRealelTotal");
   
   float resX= map(VisualRealazTotal,-100, 100, 0,width);
 float resY= map(VisualRealelTotal,60, -60, 0,height);
 stroke(255, 255, 255);
  fill(64, 224, 63);
    circle(resX, resY,11); 
   
   
      }
   
 }
 
   if(scr==4)
 {
   
  translate(width/2 , height/2);
  scale(scale);
  translate(-xPan , -yPan);

  background(0);
  image(worldImage, 0, 0);
    image(backicon, 50, 20);
    
    textSize(36);
text("Accoustic Real", 1000, 50); 
 fill(191, 31, 30);

 textSize(20);
text("Results of all 10 participants in Accoustic Real Condition", 40, 620); 
  fill(191, 31, 30);


    if (mousePressed)
    {
     if(mouseX >50 && mouseX < 100 && mouseY > 20 && mouseY < 70)
     {
       scr=1;
     }
      
    }
     for (TableRow row : table.rows()) {
  float accRealazTotal= row.getFloat("accRealazTotal");
  float accRealelTotal= row.getFloat("accRealelTotal");
   
   float resX= map(accRealazTotal,-100, 100, 0,width);
 float resY= map(accRealelTotal,60, -60, 0,height);
 stroke(255, 255, 255);
    fill(191, 31, 30);
    circle(resX, resY,11); 
      }
  
 }
 
 if(scr==5)
 {
   
  translate(width/2 , height/2);
  scale(scale);
  translate(-xPan , -yPan);

  background(0);
  image(worldImage, 0, 0);
    image(backicon, 50, 20);
    
     textSize(36);
text("Accoustic Virtual HMD No Loud-Speaker", 550, 50); 
  fill(224, 64, 155);

 textSize(20);
text("Results of all 10 participants in Accoustic Virtual HMD No Loud-Speaker Condition", 40, 620); 
  fill(224, 64, 155);
  
    if (mousePressed)
    {
     if(mouseX >50 && mouseX < 100 && mouseY > 20 && mouseY < 70)
     {
       scr=1;
     }
      
    }
    for (TableRow row : table.rows()) {
  float accVirHmdNoLsaztotal= row.getFloat("accVirHmdNoLsaztotal");
  float accVirHmdNoLseltotal= row.getFloat("accVirHmdNoLseltotal");
   
   float resX= map(accVirHmdNoLsaztotal,-100, 100, 0,width);
 float resY= map(accVirHmdNoLseltotal,60, -60, 0,height);
 stroke(255, 255, 255);
  fill(224, 64, 155);
    circle(resX, resY,11); 
      }
  
 }
 
 if(scr==6)
 {
   
  translate(width/2 , height/2);
  scale(scale);
  translate(-xPan , -yPan);

  background(0);
  image(worldImage, 0, 0);
    image(backicon, 50, 20);
    
     textSize(36);
text("Accoustic Virtual HMD", 850, 50); 
  fill(138, 71, 194);

 textSize(20);
text("Results of all 10 participants in Accoustic Virtual HMD Condition", 40, 620); 
  fill(138, 71, 194);
  
    if (mousePressed)
    {
     if(mouseX >50 && mouseX < 100 && mouseY > 20 && mouseY < 70)
     {
       scr=1;
     }
      
    }
  for (TableRow row : table.rows()) {
  float accVirHmdazTotal= row.getFloat("accVirHmdazTotal");
  float accVirHmdelTotal= row.getFloat("accVirHmdelTotal");
   
   float resX= map(accVirHmdazTotal,-100, 100, 0,width);
 float resY= map(accVirHmdelTotal,60, -60, 0,height);
 stroke(255, 255, 255);
  fill(138, 71, 194);
    circle(resX, resY,11); 
      }
 }
 
 if(scr==7)
 {
   
  translate(width/2 , height/2);
  scale(scale);
  translate(-xPan , -yPan);

  background(0);
  image(worldImage, 0, 0);
    image(backicon, 50, 20);
    
     textSize(36);
text("Accoustic Blind HMD", 900, 50); 
  fill(31, 191, 168);

 textSize(20);
text("Results of all 10 participants in Accoustic Blind HMD Condition", 40, 620); 
  fill(31, 191, 168);
  
  
    if (mousePressed)
    {
     if(mouseX >50 && mouseX < 100 && mouseY > 20 && mouseY < 70)
     {
       scr=1;
     }
      
    }
      for (TableRow row : table.rows()) {
  float accBlindHmdazTotal= row.getFloat("accBlindHmdazTotal");
  float accBlindHmdelTotal= row.getFloat("accBlindHmdelTotal");
   
   float resX= map(accBlindHmdazTotal,-100, 100, 0,width);
 float resY= map(accBlindHmdelTotal,60, -60, 0,height);
 stroke(255, 255, 255);
   fill(31, 191, 168);
    circle(resX, resY,11); 
      }
 
 }
 
 if(scr==8)
 {
   
  translate(width/2 , height/2);
  scale(scale);
  translate(-xPan , -yPan);

  background(0);
  image(worldImage, 0, 0);
    image(backicon, 50, 20);
    
     textSize(36);
text("Accoustic Blind ", 1000, 50); 
    fill(0, 102, 0);

 textSize(20);
text("Results of all 10 participants in Accoustic Blind Condition", 40, 620); 
   fill(0, 102, 0);
  
    if (mousePressed)
    {
     if(mouseX >50 && mouseX < 100 && mouseY > 20 && mouseY < 70)
     {
       scr=1;
     }
      
    }
    for (TableRow row : table.rows()) {
  float accBlindazTotal= row.getFloat("accBlindazTotal");
  float accBlindelTotal= row.getFloat("accBlindelTotal");
   
   float resX= map(accBlindazTotal,-100, 100, 0,width);
 float resY= map(accBlindelTotal,60, -60, 0,height);
 stroke(255, 255, 255);
  fill(0, 102, 0);
    circle(resX, resY,11); 
      }

 }
 
 if(scr==9)
 {
   
  translate(width/2 , height/2);
  scale(scale);
  translate(-xPan , -yPan);

  background(0);
  image(worldImage, 0, 0);
  
  textSize(36);
text("Accoustic Virtual HMD Laser ", 750, 50); 
     fill(255, 102, 0);

 textSize(20);
text("Results of all 10 participants in Accoustic Virtual HMD Laser Condition", 40, 620); 
    fill(255, 102, 0);
   
   
    image(backicon, 50, 20);
    if (mousePressed)
    {
     if(mouseX >50 && mouseX < 100 && mouseY > 20 && mouseY < 70)
     {
       scr=1;
     }
      
    }
    for (TableRow row : table.rows()) {
  float accousticVirtualHmdLaserazTotal= row.getFloat("accousticVirtualHmdLaserazTotal");
  float accousticVirtualHmdLaserelTotal= row.getFloat("accousticVirtualHmdLaserelTotal");
   
   float resX= map(accousticVirtualHmdLaserazTotal,-100, 100, 0,width);
 float resY= map(accousticVirtualHmdLaserelTotal,60, -60, 0,height);
 stroke(255, 255, 255);
  fill(255, 102, 0);
    circle(resX, resY,11); 
      }
  
 }
  if(zoomIn)
  {
    scale *= 1.5;
  }
 if (zoomOut)
  {
   scale /= 1.5;
  }
  
  if(scale<1)
  {
   scale=1; 
  }
   if (scale==1)
   {
     xPan=650;
     yPan=325;
   }
  
  if(panUp)
  {
   yPan -= 4; 
  }
  
  if(panDown)
  {
   yPan += 4;
   
  }
  
  if(panLeft)
  {
    xPan -= 4;
  }
  if(panRight)
  {
    xPan += 4;
  }
     }
     
     void keyPressed() {
       if(keyCode == UP)
       {
         zoomIn = true;
         zoomOut = false;
       }
       
       if(keyCode == DOWN)
       {
         zoomOut=true;
         zoomIn=false;
       }
       
       if(keyCode == RIGHT)
       {
         panLeft= false;
         panRight= true;
       }
       
        if(keyCode == LEFT)
       {
        panLeft= true;
         panRight = false;
       }
       
       if (key== 'w')
       {
         panUp=true;
         panDown = false;
       }
       
       if (key == 's')
       {
        panDown = true;
        panUp = false;
       
       }
       
       if (key == 'a')
       {
         panLeft= true;
         panRight = false;
       }
       
       if(key == 'd')
       {
         panLeft= false;
         panRight= true;
       }
     
     }
   
 void keyReleased()
 {
   if (keyCode == UP)
   {
     zoomIn= false;
   }
   
   if (keyCode == DOWN)
   {
     zoomOut =false;
   }
   
   if (key== 'w')
       {
         panUp=false;
       
       }
       
       if (key == 's')
       {
        panDown = false;
        
       
       }
       
       if (key == 'a')
       {
         panLeft= false;
         
       }
       
       if(key == 'd')
       {
        
         panRight= false;
       }
       
       if(keyCode == RIGHT)
       {
        
         panRight= false;
       }
       
        if(keyCode == LEFT)
       {
        panLeft= false;
        
       }
 }
  
  
  
  
  

    
