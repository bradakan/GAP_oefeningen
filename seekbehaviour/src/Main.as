package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Berend Weij
	 */
	public class Main extends Sprite 
	{
		
		private var ball : BallMovedByKeyboard;
		private var ball1 :Ball;
		private var ball2 :Ball;
		private var ball3 :Ball;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			
			ball = new BallMovedByKeyboard();
			ball1 = new Ball();
			ball2 = new Ball();
			ball3 = new Ball();
			
			addChild(ball);
			addChild(ball1);
			addChild(ball2);
			addChild(ball3);
			
			addEventListener(Event.ENTER_FRAME, update);
		}
		
		private function update(e : Event) : void
		{
			
			ball.seek(new Vector2D(mouseX, mouseY));
			ball1.seek(new Vector2D(ball.x, ball.y));
			ball2.seek(new Vector2D(ball1.x, ball1.y));
			ball3.seek(new Vector2D(ball2.x, ball2.y));
			
			
			ball.update();
			ball1.update();
			ball2.update();
			ball3.update();
		}
		
	}
	
}