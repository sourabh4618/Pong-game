Ball ball;
Paddle left;
Paddle right;

void setup(){
size(600,400);
ball =new Ball();
left =new Paddle(true);
right =new Paddle(false);
}

void draw(){
background(0);

ball.checkPaddle(left);
ball.checkPaddle(right);

ball.show();
ball.update();
ball.edges();

left.show();
right.show();

left.update();
right.update();
}

void keyReleased(){
  left.move(0);
  right.move(0);
}

void keyPressed(){
  if(key == 'a'){
    left.move(-10);
  }else if(key == 's'){
    left.move(10);
  }
  if(key == 'j'){
    right.move(-10);
  }else if(key == 'k'){
    right.move(10);
  }
}
