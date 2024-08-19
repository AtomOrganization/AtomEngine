  #include "AtomEngine.hpp"

namespace Atom {
  int Application::initialize(const std::string message){
    std::cout << "AtomEngine initialized!" << std::endl;
    std::cout << message << std::endl;
    return 0;
  }
}