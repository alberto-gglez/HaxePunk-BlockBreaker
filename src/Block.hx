import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;
import com.haxepunk.HXP;

class Block extends Entity
{
	public function new(x:Float, y:Float)
	{
		super(x, y);
		
		graphic = Image.createRect(40, 20, randColor());
		setHitbox(40, 20);
		
		type = "block";
	}
	
	public function randColor()
	{
		var a = Math.floor(Math.random() * 255);
		var r = Math.floor(Math.random() * 255);
		var g = Math.floor(Math.random() * 255);
		var b = Math.floor(Math.random() * 255);
		var color = a << 24 | r << 16 | g << 8 | b << 0;
		return color;
	}
	
	override public function update():Void 
	{
		super.update();
	}
}
