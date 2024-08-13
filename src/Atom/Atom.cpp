#include "Atom.h"
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

extern "C"
{
    ATOM_API Atom *CreateAtom() { return new Atom(); }
    ATOM_API void DestroyAtom(Atom *atom) { delete atom; }
    ATOM_API void InitializeAtom(Atom *atom) { atom->initialize(); }
    ATOM_API void DisplayMessageAtom(Atom *atom, const char *message) { atom->displayMessage(message); }
}