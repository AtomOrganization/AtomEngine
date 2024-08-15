#include "Atom.h"
#include <iostream>

namespace Atom {
  void Application::printMessage(const std::string &message)
  { 
    std::cout << message << std::endl;
  } 
}