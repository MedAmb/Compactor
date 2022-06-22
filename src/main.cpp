

#include <iostream>

std::string cToS(const char * binName)
{
    return std::string{binName};
}

int main(int argc, char** argv) {
    std::cout << cToS(argv[0]);
}