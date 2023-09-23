class Ball{
 float x=width/2;
 float y=height/2;
 float xspeed = 5;
 float yspeed = 1;
 float r=12;
 
 void checkPaddle(Paddle p,int dir){
    if(x + dir*r> p.x - dir* p.w/2 &&
       y < p.y + p.h/2    &&
       y > p.y - p.h/2){
      xspeed *= -1;
    }
  }
 
 void reset(){
   x=width/2;
   y=height/2;
 }
 void show(){
   fill(255);
   ellipse(x,y,r*2,r*2);
  }
  
  void update(){
    x = x + xspeed;
    y = y + yspeed;
  }
  
  void edges(){
    if(y<0 || y>height){
      yspeed *= -1;
    }
    if(x<0 || x>width){
      reset();
    }
  }
}
