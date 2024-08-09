#ifndef ATOM_H
#define ATOM_H

#include <string>

class Atom
{
public:
  Atom();
  ~Atom();

  void initialize();
  void displayMessage(const std::string &message);

private:
  bool isInitialized;
};

#endif // ATOM_H
