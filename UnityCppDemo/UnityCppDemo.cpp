// UnityCppDemo.cpp: 定义应用程序的入口点。
//

#include "UnityCppDemo.h"

using namespace std;

// ------------------------------------------------------------------------
// Plugin itself


// Link following functions C-style (required for plugins)
extern "C"
{

	// The functions we will call from Unity.
	//
	EXPORT_API const char*  PrintHello() {
		return "Hello";
	}

	EXPORT_API int PrintANumber() {
		return 5;
	}

	EXPORT_API int AddTwoIntegers(int a, int b) {
		return a + b;
	}

	EXPORT_API float AddTwoFloats(float a, float b) {
		return a + b;
	}

} // end of export C block