#include <iostream>

extern "C" {
	int call_lib(int x) {
		std::cout << "in c++ call_lib\n";
		return x + 2;
	}
}
