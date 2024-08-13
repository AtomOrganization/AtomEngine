#pragma once

#ifdef _WIN32
#ifdef ATOM_EXPORTS
#define ATOM_API __declspec(dllexport)
#else
#define ATOM_API __declspec(dllimport)
#endif
#else
#define ATOM_API
#endif

#include <string>

  class ATOM_API Atom
  {
  public:
    Atom();
    ~Atom();
    void initialize();
    void displayMessage(const std::string &message);

  private:
    bool isInitialized; 
  };
