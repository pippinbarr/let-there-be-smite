package
{
	import flash.events.*;
	
	import org.flixel.*;
	
	public class SinAlert extends FlxGroup
	{		
		public var _id:int;
		
		//private var _bg:FlxSprite;
		[Embed(source="assets/png/SinAlertFrame.png")]
		private var ImgSinAlertFrame:Class;
		[Embed(source="assets/png/DialogButton.png")]
		private var ImgDialogButton:Class;
		
		private var _frame:FlxButton;
		private var _alertTitle:FlxText;
		private var _loveButton:FlxButtonMod;
		private var _smiteButton:FlxButtonMod;
		private var _sinText:FlxText;
		
		public var _loveButtonPressed:Boolean;
		public var _smiteButtonPressed:Boolean;;
				
		public static const WIDTH:int = 200;
		public static const HEIGHT:int = 100;
		
		public function SinAlert(id:int, x:int, y:int, sin:Sin)
		{			
			super();
			
			_loveButtonPressed = false;
			_smiteButtonPressed = false;
			
			_id = id;
			
			_frame = new FlxButton(x,y,"",onFrameClick);
			_frame.loadGraphic(ImgSinAlertFrame);
			_alertTitle = new FlxText(x+(WIDTH/3),y+2,(WIDTH),"SIN ALERT!");
			_alertTitle.setFormat("",10,0xFF000000,"left");
			_sinText = new FlxText(x+5,y+20,190,sin._sinString);
			_sinText.setFormat("",10,0xFF000000,"left");
			_loveButton = new FlxButtonMod(x+5,y+76,"FORGIVE",loveButtonPressed);
			_loveButton.loadGraphic(ImgDialogButton,true,false,80,20);
			_smiteButton = new FlxButtonMod(x+116,y+76,"SMITE",smiteButtonPressed);
			_smiteButton.loadGraphic(ImgDialogButton,true,false,80,20);
			
			add(_frame);
			add(_alertTitle);
			add(_sinText);
			add(_loveButton);
			add(_smiteButton);
			
		}
		
		public override function update():void
		{
			super.update();
		}
		
		public override function destroy():void {
			
			super.destroy();
			
			_frame.destroy();
			_alertTitle.destroy();
			_loveButton.destroy();
			_smiteButton.destroy();
			_sinText.destroy();
			
		}
		
		public function onFrameClick():void {
			trace("SinAlert adding to Globals: _id=" + _id);
			Globals._recentSinAlerts.push(this);
		}
		
		public function loveButtonPressed():void {
			_loveButton.frame = FlxButton.PRESSED;
			_loveButtonPressed = true;
		}
		
		public function smiteButtonPressed():void {
			_smiteButton.frame = FlxButton.PRESSED;
			_smiteButtonPressed = true;
		}
	}
}