The Basic Ideas of OOP .
. OOP allows programmers to pack away details into neat, 
  self-contained boxes(objects) so that they can|think of the objects|
 |more abstractly and focus on the interactions between them|.


Encapsulation .
. Grouping related data and functions together as objects and defining
  an`interface`to those objects.
. All we need to know about is class' public methods/data = its
 `interface`.
. That is the main reason to specify`public`and`private`access 
  specifiers.


Inheritance .
.|Allowing code to be reused between related types|.
.|Allows use to define hierarchies of related classes|.
. Usually represented as is-a relationship.

    Overriding Methods .
    . Redefinition of methods in child classes override functions.
    . In defining derived classes, we only need to specify what'
      different about them from their base classes. This technique
      is called`programming by difference`.
    . Inheritance allows only overriding methods and adding new 
      members and methods.|We cannot remove functionality that was|
     |present in the base class|.

    Access Modifiers .
    . The`public`keyword used in specifying a base class e.g.
      | class Car : public Vehicle { ... }
      This gives a limit for the visibility of the inherited methods
      in the derived class. Specifying`protected`would make inherited
      methods, even those declared`public`, have at most`protected`
      visibility.


Polymorphism .
.|Allowing a value to be one of several types, and determining at|
 |runtime which function to call on it based on its type|.
. Polymorphism means "many shapes". It refers to the ability of one
  object to have many types.
. Function that expects a`Vehicle`object can safely get a`Car`object
  as an argument, because every`Car`is also a`Vehicle`. Likewise for
  references and pointers (`Vehicle*` and `Car*`).
. `Virtual functions`allow program to select the correct functions
  at runtime based on which of object is pointed to. Selecting the
  correct function at runtime is called|dynamic dispatch|
. Once method is declared as`virtual` in some class, it is virtual
  in every derived class, even if not explicitly declared as such.
.|Pure virtual function|are used when only derived classes are
  really need a definitions of it. Classes with pure virtual functions
  are`abstract classes`- they only define an interface, but doesn't 
  implement it, and therefore cannot be instantiated.


Multiple Inheritance .
. Tricky and potentially dangerous:
  # If several base classes define a common member x, developer must
    remember to disambiguate which one you're referring to by 
    specifying scope.
  # if several base classes inherited from the same base class,
    there will be two instances of the base class within each derived
    class ("dreaded diamond").