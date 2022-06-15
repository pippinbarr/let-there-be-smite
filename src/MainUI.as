package
{
	
	import org.flixel.*;
	
	public class MainUI extends FlxGroup
	{
		

		
		[Embed(source="assets/png/MainUIFrame.png")]
		private var ImgMainUIFrame:Class;
		[Embed(source="assets/png/PanicDialogButton.png")]
		private var ImgPanicDialogButton:Class;
		
		
		private var _mainUIFrame:FlxSprite;
		private var _panicButton:FlxButtonMod;
		
		private var _titleText:FlxText;
		private var _yearText:FlxText;
		private var _popText:FlxText;
		
		public var _panicPressed:Boolean = false;
		
		public function MainUI()
		{
			super();
						
			_mainUIFrame = new FlxSprite(0,0,ImgMainUIFrame);
			_panicButton = new FlxButtonMod(540,450,"",panicPressed);
			_panicButton.loadGraphic(ImgPanicDialogButton,true,false,80,20);
			
			_titleText = new FlxText(256,4,200,"LET THERE BE SMITE!");
			_titleText.setFormat("",10,0xFF000000,"left");
			_yearText = new FlxText(20,450,200,"YEAR: 1");
			_yearText.setFormat("",16,0x000000,"left");
			_popText = new FlxText(170,450,200, "POPULATION: 10000000");
			_popText.setFormat("",16,0x000000,"left");

			
			add(_mainUIFrame);
			add(_panicButton);
			
			add(_titleText);
			add(_yearText);
			add(_popText);
		}
		
		public override function update():void {

			super.update();
	
			_yearText.text = "YEAR: " + Globals._year.toString();
			_popText.text = "POPULATION: " + Globals._population.toString();

		}
		
		public override function destroy():void {
			
			super.destroy();
			
			_mainUIFrame.destroy();
			_panicButton.destroy();
			_titleText.destroy();
			_yearText.destroy();
			_popText.destroy();
		}
		
		public function panicPressed():void {
			if (!Globals._flooding) {
				_panicPressed = true;
				Globals._flooding = true;
			}
		}
		
		public function setYear(year:int):void {
		}

	}
}