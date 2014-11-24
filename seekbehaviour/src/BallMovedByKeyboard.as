package  
{
	import flash.events.KeyboardEvent;
	import flash.events.Event;
	/**
	 * ...
	 * @author Rocky Tempelaars
	 */
	public class BallMovedByKeyboard extends Ball
	{
		
		public function BallMovedByKeyboard() 
		{
			addEventListener(Event.ADDED_TO_STAGE,init);
		}
		
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			stage.addEventListener(KeyboardEvent.KEY_DOWN,move);
		}
		
		private function move(e:KeyboardEvent):void 
		{
			if (e.keyCode == 37)
			{
				//left
			}
			if (e.keyCode == 38)
			{
				//up
			}
			if (e.keyCode == 39)
			{
				//right
			}
			if (e.keyCode == 40)
			{
				//down
			}
			
		}
		
	}

}