float velx,vely,ax,ay,locx,locy,sz;
void setup(){
  size(800,600);
  colorMode(HSB,360,60,60,80);
  locx=width/2;
  locy=height/2;
  velx=0;
  vely=0;
  ax=0;
  ay=0;
  sz=50;
}
void draw(){
  locx+=velx;
  locy+=vely;
  
  velx=constrain(velx,-3,3);
  vely=constrain(vely,-3,3);
  
  velx+=ax;
  vely+=ay;
  
  stroke(frameCount%360, 100,50);
  fill(frameCount%360,100,100,100);
  ellipse(locx,locy,sz,sz);
  
  if(locx>width+sz/2){
   locx=0; 
  }
  
  if(locx<0){
   locx=width; 
  }
  
  if(locy>height+sz/2){
    locy=0;
  }
  
  if (locy<0){
    locy=height;
  }
}
void keyPressed(){
  ax=random(-.1,.1);
  ay=random(-.1,.1);
}
