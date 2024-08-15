#include "Atom.h"
#include <iostream>

namespace Atom {
  void Application::printMessage(const std::string &message)
  { 
    std::cout << "Atom Engine initialize!" << std::endl;
    std::cout << message << std::endl;
  } 
}