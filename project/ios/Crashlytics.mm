#include "Utils.h"
#import <Fabric/Fabric.h>
#import <Crashlytics/Crashlytics.h>

namespace crashlytics {
	void init() {		
		[Fabric with:@[[Crashlytics class]]];		
	}
	
	void crash() {		
		[[Crashlytics sharedInstance] crash];		
	}
	
	void exception() {
		[CrashlyticsKit throwException];
	}
}