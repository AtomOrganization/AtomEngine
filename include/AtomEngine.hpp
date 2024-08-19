#pragma once

#ifndef ATOMENGINE_HPP
#define ATOMENGINE_HPP

#include <iostream>

namespace Atom {
  class Application
  {
  public:
    int initialize(const std::string message);
  };
}

#endif // ATOMENGINE_HPP