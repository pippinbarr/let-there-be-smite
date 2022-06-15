package
{
	import org.flixel.*;
	
	public class CamFeed extends FlxGroup
	{
		private const CAMFEED_WIDTH:int = 599;
		private const CAMFEED_HEIGHT:int = 393;
		private const CAMFEED_X_INSET:int = 20;
		private const CAMFEED_Y_INSET:int = 40;
		
		private const PEOPLE_HEIGHT:int = 12;
		private const PEOPLE_WIDTH:int = 4;
		private const PEOPLE_SPEED:int = 5;
		private const MAX_PEOPLE:int = 10;
		
		private const PEOPLE_X_RANGE:int = CAMFEED_WIDTH;
		private const PEOPLE_Y_RANGE:int = 80;
		
		private const TOP_PEOPLE_Y:int = CAMFEED_Y_INSET + CAMFEED_HEIGHT - PEOPLE_Y_RANGE;
		private const BOTTOM_PEOPLE_Y:int = CAMFEED_Y_INSET + CAMFEED_HEIGHT - PEOPLE_HEIGHT;
		private const LEFT_PEOPLE_X:int = CAMFEED_X_INSET;
		private const RIGHT_PEOPLE_X:int = CAMFEED_X_INSET + CAMFEED_WIDTH - PEOPLE_WIDTH;
		
		private var _camNumber:int;
		private var _camNumberText:FlxText;
		private var _nextCam:Boolean = false;
		
		[Embed(source="assets/png/CamFeedBGWithHouses.png")]
		private var ImgCamFeedBG:Class;
		
		[Embed(source="assets/png/Static.png")]
		private var ImgStatic:Class;
		
		[Embed(source="assets/mp3/Static.mp3")]
		private var SndStatic:Class;
		
		private var _bgImage:FlxSprite;
		private var _lightingLayer:FlxSprite;
		private var _static:FlxSprite;
		private var _staticSound:FlxSound;
		
		private var _people:Array;
		
		public function CamFeed(camNumber:int)
		{
			super();
			
			_static = new FlxSprite(CAMFEED_X_INSET,480);
			_static.loadGraphic(ImgStatic,true,false,599,393);
			_static.addAnimation("anim",[0,1,2,3,4],20,false);
			
			_staticSound = new FlxSound();
			_staticSound.loadEmbedded(SndStatic,false,true);
			
			_camNumber = camNumber;
			_camNumberText = new FlxText(30,48,200,"CAMERA 0" + _camNumber.toString());
			_camNumberText.setFormat("",24,0xFF000000,"left",0);
			
			_bgImage = new FlxSprite(CAMFEED_X_INSET,CAMFEED_Y_INSET);
			_bgImage.loadGraphic(ImgCamFeedBG,true,false,CAMFEED_WIDTH,CAMFEED_HEIGHT,false);
			
			_lightingLayer = new FlxSprite(CAMFEED_X_INSET,CAMFEED_Y_INSET);
			_lightingLayer.makeGraphic(CAMFEED_WIDTH,CAMFEED_HEIGHT,0x11000000);
			
			_people = new Array();
			
			add(_bgImage);
			add(_lightingLayer);
			add(_camNumberText);
			add(_static);
			
			for (var j:int = 0; j < MAX_PEOPLE && j < Globals._population; j++) {
				addNewPerson();
			}
		}
		
		public override function update():void {
			
			super.update();
			
			if (_nextCam) {
				if (_static.frame == 4) {

					_static.y = 480;

					_camNumber++;
					
					_camNumberText.text = "CAMERA ";
					if (_camNumber < 10) _camNumberText.text += "0";
					_camNumberText.text += _camNumber.toString();
					
					_bgImage.randomFrame();
					_lightingLayer.makeGraphic(CAMFEED_WIDTH,CAMFEED_HEIGHT,FlxU.makeColor(0,0,0,Math.random()));
					
					for (var i:int = 0; i < MAX_PEOPLE && i < Globals._population; i++) {
						if (i == _people.length) {
							addNewPerson();				
						}
						else {
							_people[i].x = getRandomPeopleX();
							_people[i].y = getRandomPeopleY();
						}
					}
					_nextCam = false;
				}
			}
			else {
				for (var j:int = 0; j < _people.length; j++) {
					var moveX:Number = (Math.random() - 0.5) * PEOPLE_SPEED;
					var moveY:Number = (Math.random() - 0.5) * PEOPLE_SPEED;
					
					_people[j].x += moveX;
					_people[j].y += moveY;
					
					if (_people[j].x > RIGHT_PEOPLE_X || _people[j].x < LEFT_PEOPLE_X) _people[j].x -= moveX;
					if (_people[j].y > BOTTOM_PEOPLE_Y || _people[j].y < TOP_PEOPLE_Y) _people[j].y -= moveY;
				}
			}
		}
		
		public override function destroy():void {
			
			super.destroy();
			
			_camNumberText.destroy();
			_bgImage.destroy();
			_lightingLayer.destroy();
			_static.destroy();
			_staticSound.destroy();
			_people = null;
		}
		
		public function getRandomPeopleX():int {
			return Math.floor(Math.random() * PEOPLE_X_RANGE) + CAMFEED_X_INSET;
		}
		
		public function getRandomPeopleY():int {
			return Math.floor(Math.random() * PEOPLE_Y_RANGE) + TOP_PEOPLE_Y - PEOPLE_HEIGHT;
		}
		
		public function addNewPerson():void {
			_people.push(new FlxSprite(getRandomPeopleX(), getRandomPeopleY()));
			_people[_people.length - 1].makeGraphic(PEOPLE_WIDTH,PEOPLE_HEIGHT,0xFF000000);
			add(_people[_people.length - 1]);
		}
		
		public function nextCamera():void {
			_static.y = CAMFEED_Y_INSET;
			_static.play("anim",true);
			_staticSound.play();
			_nextCam = true;	
		}
	}
}