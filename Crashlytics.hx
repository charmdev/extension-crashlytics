package;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

#if (android && openfl)
import openfl.utils.JNI;
#end


class Crashlytics {
	
	
	public static function init () {
		
		#if (android && openfl)
/*		
		var resultJNI = crashlytics_sample_method_jni(inputValue);
		var resultNative = crashlytics_sample_method(inputValue);
		
		if (resultJNI != resultNative) {
			
			throw "Fuzzy math!";
			
		}
		
		return resultNative;
*/		
		#else
		
		crashlytics_init();
		
		#end
		
	}
	
	public static function crash() { crashlytics_crash(); } 
		
	
	private static var crashlytics_exception= Lib.load ("crashlytics", "crashlytics_exception", 0);
	private static var crashlytics_crash= Lib.load ("crashlytics", "crashlytics_crash", 0);
	private static var crashlytics_init= Lib.load ("crashlytics", "crashlytics_init", 0);
	
	#if (android && openfl)
	private static var crashlytics_init_jni = JNI.createStaticMethod ("org.haxe.extension.Crashlytics", "init", "(I)I");
	#end
	
	
}