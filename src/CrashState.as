package
{
	import org.flixel.*;
	
	public class CrashState extends FlxState
	{
		[Embed(source="assets/png/Cursor.png")]
		private var ImgCursor:Class;

		[Embed(source="assets/png/CrashFrame.png")]
		private var ImgCrashFrame:Class;
		private var _crashFrame:FlxSprite;

		private var _crashText:FlxText;
		private var _crashTextString:String;
		private var _crashTitle:FlxText;
		
		public function CrashState()
		{
			super();
		}
		
		public override function create():void {
			
//			FlxG.mouse.hide();
			FlxG.mouse.show(ImgCursor,1,-12,0);
			
			FlxG.bgColor = 0xff000000;

			_crashFrame = new FlxSprite(0,0,ImgCrashFrame);
			
			_crashTextString = "" +
				"Trace:\n" +
				"\n" +
				"<C041B7F2> __smitedriver+0x9e\n" +
				"<D2666F1A> bus__add__sinalert+0x2f\n" +
				"<F19DD632> __detect__sin+0x12a\n" +
				"<CCA19845> __init__world+0x63\n" +
				"<AB12298C> __deus__ex__machina+0x9d\n" +
				"\n" +
				"<0x44ED12> Biblical exception: sin overflow\n" +
				"\n\n\n\n" +
				"                Click to restart_";
			
			_crashText = new FlxText(150,150,350,_crashTextString);
			_crashText.setFormat(null,12,0xFF000000,"left");
			
			_crashTitle = new FlxText(202,112,300,"UH OH! SOMETHING WENT WRONG!");
			_crashTitle.setFormat(null,12,0xFF000000,"left");
			
			add(_crashFrame);
			add(_crashText);
			add(_crashTitle);
		}
		
		public override function update():void {
			if (FlxG.mouse.justPressed()) {
				FlxG.switchState(new PlayState());
			}
		}
		
		public override function destroy():void {
			
		}
	}
}