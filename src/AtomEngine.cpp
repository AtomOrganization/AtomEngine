#include <AtomEngine.h>

namespace Atom {
  int initialize(std::string const message){
    std::cout << "Atom Engine Initialize from " << message << std::endl;
    OpenGLWrapper::initialize();
    return 0;
  }
}