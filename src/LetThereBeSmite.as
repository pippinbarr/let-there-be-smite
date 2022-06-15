package
{
	import org.flixel.*;
	
	import flash.display.*;
	import flash.geom.Rectangle;
	import flash.system.fscommand;
	import flash.ui.Mouse;
	import flash.events.Event;

	public class LetThereBeSmite extends FlxGame
	{
		
		public function LetThereBeSmite()
		{
			super(640,480,PlayState,1,60,30,true);
		
			FlxG.stage.showDefaultContextMenu = false;
			FlxG.stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
			FlxG.stage.scaleMode = StageScaleMode.NO_SCALE;
			FlxG.stage.fullScreenSourceRect = new Rectangle(0,0,640,480);
			FlxG.stage.color = 0x000000;
			FlxG.stage.align = StageAlign.TOP;

			Mouse.show();
			Mouse.hide();
			this.useSystemCursor = false;
			this.useSoundHotKeys = false;
			FlxG.volume = 1.0;
			FlxG.visualDebug = false; //Globals.DEBUG_HITBOXES;	

			fscommand("trapallkeys","true");

		}
		
	}
}