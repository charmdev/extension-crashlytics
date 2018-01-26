#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif


#include <hx/CFFI.h>
#include "Utils.h"


using namespace crashlytics;



static void crashlytics_init() {
	init();
}
DEFINE_PRIM (crashlytics_init, 0);

static void crashlytics_crash() {
	crash();
}
DEFINE_PRIM (crashlytics_crash, 0);

static void crashlytics_exception() {
	crash();
}
DEFINE_PRIM (crashlytics_exception, 0);


extern "C" void crashlytics_main () {
	
	val_int(0); // Fix Neko init
	
}
DEFINE_ENTRY_POINT (crashlytics_main);



extern "C" int crashlytics_register_prims () { return 0; }