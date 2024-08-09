#include "ATOM.h"
#include <iostream>

Atom::Atom() : isInitialized(false) {}

Atom::~Atom() {}

void Atom::initialize()
{
    isInitialized = true;
    std::cout << "Engine initialized." << std::endl;
}

void Atom::displayMessage(const std::string &message)
{
    if (isInitialized)
    {
        std::cout << message << std::endl;
    }
    else
    {
        std::cout << "Engine not initialized. Cannot display message." << std::endl;
    }
}
