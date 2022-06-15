package
{
	import org.flixel.*;
	
	public class SinAlerts extends FlxGroup
	{

		private var _highestSinAlertID:int = 0;
		
		public function SinAlerts()
		{
			super();
		}
		
		public function addSinAlert():void {
			var sins:Array = SinGenerator.getNewSin();
			_highestSinAlertID++;
			FlxG.state.add(new SinAlert(_highestSinAlertID,getRandomScreenX(),getRandomScreenY(),sins[0]));
			if (sins.length > 1) {
				FlxG.state.add(new SinAlert(_highestSinAlertID,getRandomScreenX(),getRandomScreenY(),sins[1]));
			}
			Globals._activeSins++;
		}
		
		public override function update():void {
			
			super.update();

			if (Globals._recentSinAlerts.length != 0) {
				
				var lastClick:FlxGroup = Globals._recentSinAlerts.pop();
				trace(FlxU.getClassName(lastClick));
				if (FlxU.getClassName(lastClick) == "SinAlert") {
					var mostRecentSinAlert:SinAlert = lastClick as SinAlert;
					trace("Winner winner...");
				}
				else {
					Globals._recentSinAlerts = new Array();
					return;
				}
				if (mostRecentSinAlert._loveButtonPressed) {
					FlxG.state.add(new LiveFeed(getRandomScreenX(), getRandomScreenY(), "FORGIVE"));
					mostRecentSinAlert.kill();
					Globals._activeSins--;
				}
				else if (mostRecentSinAlert._smiteButtonPressed) {
					FlxG.state.add(new LiveFeed(getRandomScreenX(), getRandomScreenY(), "SMITE"));
					mostRecentSinAlert.kill();
					Globals._activeSins--;
				}
				
				Globals._recentSinAlerts = new Array();
			}
			
		}
		
		public override function destroy():void {
			super.destroy();
		}
		
		private function getRandomScreenX():int {
			return Math.floor(Math.random() * (FlxG.width - SinAlert.WIDTH));
		}
		
		private function getRandomScreenY():int {
			return Math.floor(Math.random() * (FlxG.height - SinAlert.HEIGHT));
			
		}
	}
}