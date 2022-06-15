package
{
	import org.flixel.FlxButton;
	
	public class FlxButtonMod extends FlxButton
	{
		public function FlxButtonMod(X:Number=0, Y:Number=0, Label:String=null, OnClick:Function=null)
		{
			super(X, Y, Label, OnClick);
		}
		
		public override function update():void {
			super.update();
			label.alpha = 1.0;
			frame = NORMAL;
			label.y = y + labelOffset.y;
		}
		
		public override function destroy():void {
			super.destroy();
		}
		
	}
}