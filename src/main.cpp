#include <iostream>
#include "calculator.h"

int main (int argc, char *argv[]) { 
    Calculator calc;
    std::cout << calc.Add(2.28, 3.22) << std::endl;
    std::cout << calc.Sub(3.22, 2.28) << std::endl;
    return 0;
}