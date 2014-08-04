package {
	
	import flash.display.MovieClip;
	import flash.geom.ColorTransform;
	import flash.events.*;
	import flash.display.Stage;
	
	public class bubbles extends MovieClip {
		
		public var maxWidthSphere:Number = 170;
		public var minWidthSphere:Number = 10;
		public var alphaRange:String = "abcdefghijklmnopqrstuvwxyz";
		private var boundsWidth:Number;
		private var boundsHeight:Number;
		
		public function bubbles(stageObj:Stage, numSpheresToCreate) {
			
			boundsWidth = stageObj.stageWidth;
			boundsHeight = stageObj.stageHeight;
			
			for(var bot:Number = 1; bot<= numSpheresToCreate; bot++){
				var circle = new sphere();
				var circleColor = new ColorTransform();
				var randomNumShapeGen = Math.floor(Math.random() * (100 - 1) + 1);
				var letterHex = Math.floor((Math.random() * (alphaRange.length - 2) + 1));
				//
				circle.name = ("circle_"+ bot);
				circleColor.color = "0x" +letterHex + letterHex+(bot + bot*2)+(bot+ bot);
				circle.transform.colorTransform = circleColor;
				circle.x = (Math.random() * (boundsWidth - 1) + 1); 
				circle.y = (Math.random() * (boundsHeight - 1) + 1); 
				//
				circle.width = (Math.random() * (maxWidthSphere - minWidthSphere) + minWidthSphere); 
				circle.height = circle.width; 
				circle.randomNumVal = randomNumShapeGen;
				//
				stageObj.addChild(circle);
			}//end loop
		}

	}
	
}
