package ;

import com.haxepunk.Engine;
import com.haxepunk.HXP;
import com.haxepunk.Scene;

/**
 * ...
 * @author Alberto
 */

class Main extends Engine 
{

	public static inline var kScreenWidth:Int = 640;
	public static inline var kScreenHeight:Int = 480;
	public static inline var kFrameRate:Int = 60;
	public static inline var kClearColor:Int = 0x333333;
	public static inline var kProjectName:String = "hxnoid";

	function new()
	{
		super(kScreenWidth, kScreenHeight, kFrameRate, false);	
	}

	override public function init()
	{
#if debug
	#if flash
		if (flash.system.Capabilities.isDebugger)
	#end
		{
			HXP.console.enable();
		}
#end
		HXP.screen.color = kClearColor;
		HXP.screen.scale = 1;
		
		HXP.scene = new GameScene();
		
//		HXP.world = new YourWorld();
	}

	public static function main()
	{
		var app = new Main();
	}
}