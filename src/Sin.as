package
{
	public class Sin
	{
		
		// Properties that all sins have
		public var _place:String;
		public var _sinnerName:String;
		public var _sinnerGender:String;
		public var _commandment:int;

		// Properties that Sinfo may have for particular sins
		public var _sinnerPossessive:String;
		public var _sinnerParent:String;
		public var _otherName:String; // Adulterer, false witness victim, neighbour
		public var _otherGod:String;
		public var _possession:String;
	
		// The actual dialogue text
		public var _sinString:String;
		
		public function Sin()
		{
		}
		
		public function print():void {
			trace(_sinString);
		}
	}
}