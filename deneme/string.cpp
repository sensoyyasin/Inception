#include <iostream>

int main()
{
    std::string str = "geeksforgeeks";

    std::string::iterator iterator = str.begin();
    while (iterator != str.end())
    {
        std::cout << *iterator;
        ++iterator;
    }
    std::cout << std::endl;
}