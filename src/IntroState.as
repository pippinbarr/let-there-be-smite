package
{
	
	import org.flixel.*;
	
	public class IntroState extends FlxState
	{
		
		[Embed(source="assets/png/IntroBG.png")]
		private var ImgIntroBG:Class;
		private var _introBG:FlxSprite;

		[Embed(source="assets/png/LoadingBar.png")]
		private var AnimLoadingBar:Class;
		private var _loadingBar:FlxSprite;
		
		private var _godOSText:FlxText;

		
		private var _introTexts:Array = new Array(
			"Hi God! LetThereBeSmite, Your new sin monitoring software, is now loading!\n\n" +
			"\n( Click to continue. )", 
			"With LetThereBeSmite, You can keep track of the sins of the world and choose how to deal with them.\n\n" +
			"( Click to continue. )",  
			"Smite them with Your infinite Justice or Forgive them with Your infinite Love. It's all up to You of course!\n\n" +
			"( Click to continue. )", 
			"If things get out of control, don't forget the Panic button at the lower right of Your screen!\n\n" +
			"( Click to continue. )", 
			"LetThereBeSmite is now fully loaded!\n\n" +
			"( Click to begin! )");
		private var _introText:FlxText;
		private var _currentIntroTextIndex:int = 0;
		
		public function IntroState()
		{
			super();
		}
		
		override public function create():void
		{
			super.create();
						
			FlxG.mouse.hide();
			_introText = new FlxText(120,100,400,_introTexts[_currentIntroTextIndex]);
			_introText.setFormat(null,16,0xFF000000,"center");
			_introBG = new FlxSprite(0,0,ImgIntroBG);
			
			_godOSText = new FlxText(0,300,640,"GodOS");
			_godOSText.setFormat(null,48,0xFF000000,"center");
			
			_loadingBar = new FlxSprite(180,380);
			_loadingBar.loadGraphic(AnimLoadingBar,true,false,280,40);
			_loadingBar.addAnimation("anim",[0,1,2,3,4],0,false);
			
			add(_introBG);
			add(_introText);
			add(_godOSText);
			add(_loadingBar);
		}
		
		override public function update():void 
		{
			super.update();
			
			if (FlxG.mouse.justReleased()) {
				_currentIntroTextIndex++;
				if (_currentIntroTextIndex == _introTexts.length) {
					FlxG.switchState(new PlayState());
				}
				else {
					_introText.text = _introTexts[_currentIntroTextIndex];
					_loadingBar.frame++;
				}
			}
		}
		
		override public function destroy():void
		{
			_introBG.destroy();
			_introText.destroy();
			_introTexts = null;
			_loadingBar.destroy();
			
			super.destroy();
		}
		
	}
	
}