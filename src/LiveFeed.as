package
{
	import org.flixel.*;
	
	public class LiveFeed extends FlxGroup
	{
		[Embed(source="assets/png/LiveFeedFrame.png")]
		private var ImgLiveFeedFrame:Class;
		[Embed(source="assets/png/SmiteAnimation.png")]
		private var ImgSmiteAnimation:Class;
		[Embed(source="assets/png/ForgiveAnimation.png")]
		private var ImgForgiveAnimation:Class;
		[Embed(source="assets/mp3/Smite.mp3")]
		private var SndSmite:Class;
		[Embed(source="assets/mp3/Forgive.mp3")]
		private var SndForgive:Class;
		
		private var _frame:FlxButton;
		
		private var _smiteSound:FlxSound;
		private var _smiteAnimation:FlxSprite;
		private var _forgiveSound:FlxSound;
		private var _forgiveAnimation:FlxSprite;
		
		private var _animationBGTop:FlxSprite;
		private var _animationBGBottom:FlxSprite;
		
		private var _forgiveTitle:FlxText;
		private var _smiteTitle:FlxText;
		
		private var _type:String;

		public function LiveFeed(x:int,y:int,type:String)
		{
			super();
			
			_type = type;
			
			_frame = new FlxButton(x,y,"",onFrameClick);
			_frame.loadGraphic(ImgLiveFeedFrame);
			
			_animationBGTop = new FlxSprite(x+2,y+21);
			_animationBGTop.makeGraphic(96,64,FlxU.makeColor(0,0,0,Math.random()) + 0.5);
			
			_animationBGBottom = new FlxSprite(x+2,y+21+64);
			_animationBGBottom.makeGraphic(96,63,FlxU.makeColor(0,0,0,Math.random()) + 0.5);
			
			add(_frame);
			add(_animationBGTop);
			add(_animationBGBottom);
						
			if (_type == "FORGIVE") {
				_forgiveTitle = new FlxText(x+32,y+3,100,"LIVE!");
				_forgiveTitle.setFormat("",10,0xFF000000,"left");
				
				_forgiveAnimation = new FlxSprite(x+2,y+21);
				_forgiveAnimation.loadGraphic(ImgForgiveAnimation,true,false,96,127,false);
				_forgiveAnimation.addAnimation("anim",[0,1,2,3,4,5,6,7,8,9,10,11,12,13],10,false);
				
				_forgiveSound = new FlxSound();
				_forgiveSound.loadEmbedded(SndForgive,false,true);
				
				add(_forgiveTitle);
				add(_forgiveAnimation);
				
				_forgiveAnimation.play("anim");
			}
			else if (_type == "SMITE") {
				_smiteTitle = new FlxText(x+32,y+3,100,"LIVE!");
				_smiteTitle.setFormat("",10,0xFF000000,"left");
				
				_smiteAnimation = new FlxSprite(x+2,y+21);
				_smiteAnimation.loadGraphic(ImgSmiteAnimation,true,false,96,127,false);
				_smiteAnimation.addAnimation("anim",[0,1,2,3,4,5,6,7,8,9,10,11,12,13],10,false);
				
				_smiteSound = new FlxSound();
				_smiteSound.loadEmbedded(SndSmite,false,true);
				
				add(_smiteTitle);
				add(_smiteAnimation);
				
				_smiteAnimation.play("anim");
			}

		}
		
		public override function update():void {
			
			super.update();
			
			if (_type == "SMITE" && _smiteAnimation.frame == 4) {
				_smiteSound.play();
			}
			else if (_type == "FORGIVE" && _forgiveAnimation.frame == 4) {
				_forgiveSound.play();
			}
			
			if (_type == "SMITE" && _smiteAnimation.finished) {
				this.kill();
			}
			else if (_type == "FORGIVE" && _forgiveAnimation.finished) {
				this.kill();
			}
			
		}
		
		public override function destroy():void {
			
			super.destroy();
			
			_frame.destroy();
			if (_smiteSound != null) _smiteSound.destroy();
			if (_forgiveSound != null) _forgiveSound.destroy();
			if (_smiteAnimation != null) _smiteAnimation.destroy();
			if (_forgiveAnimation != null) _forgiveAnimation.destroy();
			_animationBGTop.destroy();
			_animationBGBottom.destroy();
			if (_forgiveTitle != null) _forgiveTitle.destroy();
			if (_smiteTitle != null) _smiteTitle.destroy();
			_type = null;
		}
		
		private function onFrameClick():void {
			trace("LiveFeedFrame adding to Globals");
			Globals._recentSinAlerts.push(this);
		}
		
	}
}