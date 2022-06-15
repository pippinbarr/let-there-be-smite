package
{
	import flash.events.MouseEvent;
	
	import org.flixel.*;
	import flash.ui.Mouse;
	
	public class PlayState extends FlxState
	{
		
		[Embed(source="assets/png/Cursor.png")]
		private var ImgCursor:Class;
		
		[Embed(source="assets/png/Waves.png")]
		private var ImgWaves:Class;
		private var _waves:FlxSprite;
		private var _wavesAdded:Boolean = false;
		
		[Embed(source="assets/mp3/WavesIn.mp3")]
		private var SndWavesIn:Class;
		private var _wavesInSound:FlxSound;

		[Embed(source="assets/mp3/WavesOut.mp3")]
		private var SndWavesOut:Class;
		private var _wavesOutSound:FlxSound;
		
		private var _switchState:Boolean = false;
		
		private  var _sinAlerts:SinAlerts;
		
		private var _UI:MainUI;
		private var _camFeed:CamFeed;
		
		private var _yearTimer:Number = 0;
		private var _cameraTimer:Number = 0;
		private var _currentCamNumber:int = 1;
		
		public function PlayState()
		{
			super();
		}
		
		public override function create():void
		{			
			
			super.create();
			

			
			FlxG.bgColor = 0xff000000;
						
			Mouse.hide();
			FlxG.mouse.hide();			
//			FlxG.mouse.show(ImgCursor,1,-12,0);
			
			Globals._population = 2;
			Globals._year = 0;
			Globals._recentSinAlerts = new Array();
			Globals._activeSins = 0;
			
			_waves = new FlxSprite(0,480,ImgWaves);
			_wavesInSound = new FlxSound();
			_wavesInSound.loadEmbedded(SndWavesIn,false,false);
			_wavesOutSound = new FlxSound();
			_wavesOutSound.loadEmbedded(SndWavesOut,false,false);
			
			_UI = new MainUI();
			_camFeed = new CamFeed(_currentCamNumber);
			_sinAlerts = new SinAlerts();
			
			add(_UI);
			add(_camFeed);
			add(_sinAlerts);
		}
		
		public override function update():void {
			
			super.update();
								
			if (FlxG.keys.ESCAPE)
			{
				_UI.panicPressed();
			}
			
			
			if (Globals._activeSins >= 40) {
				// God's computer crashes.
				FlxG.switchState(new CrashState());
			}
			
			if (!_UI._panicPressed && Globals._flooding) {
				
				// Then we were just created and need to "unflood"
				if (!_wavesAdded) {
					// Add the waves if this is the first time through
					_waves.y = -20;
					add(_waves);
					_wavesAdded = true;
					_wavesOutSound.play();
				}
				else {
					// Otherwise, move the waves down
					_waves.y += 2;
					if (_waves.y == 620) {
						// If the waves reach the bottom, remove the waves
						remove(_waves);
						_wavesAdded = false;
						Globals._flooding = false;
					}
				}
			}
			
			else if (_UI._panicPressed) {
				// Someone pressed the panic button
				if (Globals._flooding && !_wavesAdded) {
					// So we're flooding and we need to add the waves
					add(_waves);
					_wavesAdded = true;
					_wavesInSound.play()
				}
				else if (Globals._flooding && !_switchState) {
					// Otherwise we're just flooding and need to move the waves
					_waves.y-=2;
					if (_waves.y == -20) {
						// If the waves reach the top, we need to switch to a new state
						_switchState = true;
					}
				}
				else if (_switchState) {
					// It's time to start a new play state
					FlxG.switchState(new PlayState());
				}
			}
			else {
			
				// Otherwise just play the game.
				
				_yearTimer += FlxG.elapsed;
				_cameraTimer += FlxG.elapsed;
				
				// Change camera if 10 seconds have passed
				if (_cameraTimer > 10) {
					_camFeed.nextCamera();
					_cameraTimer = 0;
				}
				
				// Add ten to the year each [second]
				if (_yearTimer > 3) {
					Globals._year += 10;
					
					increasePopulation();
					addSins();
					
					// Reset the timer
					_yearTimer = 0;
				}
			}
			
			
		}
		
		public override function destroy():void {
			
			super.destroy();
			
			_sinAlerts.destroy();
			_UI.destroy();
			_camFeed.destroy();
			_wavesInSound.destroy();
			_wavesOutSound.destroy();
		}
		
		private function increasePopulation():void {
			Globals._population = Math.ceil(2 * Math.pow(2.2,(Globals._year * 0.05)));
		}
		
		private function addSins():void {
			if (Globals._year < 100 && Globals._year % 20 == 0) {
				_sinAlerts.addSinAlert();
			}
			else {
				var newSins:int = Math.floor(Math.random() * 0.1 * (Math.ceil(2 * Math.pow(1.8,((Globals._year) * 0.03)))));
				for (var i:int = 0; (i < newSins && i < 4); i++) {
					_sinAlerts.addSinAlert();
				}
			}
		}
		
	}
}