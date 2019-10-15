Bacteria[] bactArr = new Bacteria[800];
int snowPile=0;   
 void setup()   
 {   
 	//frameRate(25);
 	size(500,500);  
 	background(122);
 	for(int i = 0;i<bactArr.length;i++)
 		bactArr[i]=new Bacteria();   
 }   
 void draw()   
 {   
 	background(122);
 	fill(255);
 	stroke(255); 
 	for(int j = 0;j<bactArr.length;j++){
 		bactArr[j].move();
 		bactArr[j].show();
 		bactArr[j].reset();
 		rect(0,500,500,snowPile);
 	}   
 }  
 class Bacteria    
 {     
 	int x,y,r,g,b;
 	public Bacteria(){
 		x = (int)(Math.random()*500);
 		y = (int)(Math.random()*500)-10;
 	}
 	public void move(){
 		x+=(int)(Math.random()*3)-1;
 		y+=(int)(Math.random()*2)+1;
 	}
 	public void show(){
 		ellipse(x,y,10,10);
 	}
 	public void reset(){
 		if(y>=500){
 			x = (int)(Math.random()*500);
 			y=0;
 			snowPile++;
 		}
 	}
 }

    