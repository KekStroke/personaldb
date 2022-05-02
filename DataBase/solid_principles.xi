Class Design Principles .
  SRP (The Single Responsibility Principle) .
  . A class should have one, and only one, reason to change
    (one responsibility).
  . Different independent methods should be separated from each
    other. (Shouldn't be located in the same class). 
  . Don't put function that would change for different reasons in
    the same class.
  OCP (The Open/Closed Principle) .
  . Module should be open for extension, but closed for
    modification.
  . If we add some features, nothing should be recompiled.
  . High-level policy doesn't know about low-level details.
  LSP (The Liskov Substitution Principle) .
  . Derived classes must be usable through the base class
    Interface, without the need for the user to know the
    difference.
  . Derived classes should be substitutable for the base class.
  . |Behaves like| relationship instead of |is a|.
  . Try prevent any |is a| checks in your program to check types.
  ISP (The Interface Segregation Principle) .
  . Clients should not be forced to depend on methods that they
    do not use.
  . Larger interfaces should be split into smaller ones.
  . Implementing classes only need to be concerned about the
    methods that are of interest to them.
  DIP (The Dependency inversion Principle) .
  . High-level modules should not depend on low-level modules.
  . Both high-level and low-level modules should depend on
    abstractions.
  . Abstractions should not depend on details. Details should
    depend on abstractions.