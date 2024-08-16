#pragma once
#include <string>

namespace Atom {
  class Application
  {
  public:
    static void printMessage(const std::string &message);
  };
  class GLFW
  {
  public:
    static int main();
  };
}
