 Bacteria [] bob;//declare bacteria variables here   
 void setup()   
 {     
 	noStroke();
 	size(600,600);
 	bob = new Bacteria [500];
 	for (int i = 0; i < bob.length; i++){
 		bob[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	for(int i = 0; i < bob.length; i++){
 		bob[i].show();
 		bob[i].travel();
 	}
 }   
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria(){
 		myX = myY = 250;
 		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
 	}
 	void travel(){
 		myX = myX + (int)(Math.random() * 7) - 3;
 		myY = myY + (int)(Math.random() * 7) - 3;
 	}
 	void show(){
 		fill(myColor);
 		ellipse(myX, myY, 2, 2);
 	}
 }
