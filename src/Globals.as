package
{
	// A place for static globals to live, basically
	// Basically, to cheat encapsulation and "rules" - fuck 'em
	
	public class Globals
	{
		
		// An array that stores all the dialogs that get clicked
		// so we can decide which actually "captures" the click,
		// since I'm not interested in hacking FlxButton.
		public static var _recentSinAlerts:Array = new Array();
		
		public static var _activeSins:Number = 0;
		
		// A place to track the year and population to be accessible
		// everywhere (though not really used much)
		public static var _year:int = 0;
		public static var _population:Number = 2;
		
		// Part of my super hacky system to get the flooding state
		// change to work
		public static var _flooding:Boolean = false;
		
		public function Globals()
		{
		}
	}
}