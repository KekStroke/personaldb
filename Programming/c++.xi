OOP[] .
    Polymorphism [OOP#Polymorphism] .

    . in the following example
        | Car c("VANITY", 2003);
        | Vehicle *vPtr = &c ;
        | cout << vPtr->getDesc();
      Because vPtr is declared as a`Vehicle *`, this will call the
     `Vehicle` version of getDesc, even though the object pointed to
     is actually a`Car`.
    . If we want the program to select the correct function at
      runtime based on which kind of object is pointed to,`virtual`
      keyword will induce this behavior. 
        | class Vehicle {
        |   ...
        |   virtual const string getDesc() {...}
        | };
      With this definition, the code above would correctly select
      the`Car`version of`getDesc`.

    .|Pure virtual Functions| are defined this way:
        | class Vehicle {
        |   ...
        |   virtual const string getDesc() = 0; // Pure virtual
        | };
      The = 0 indicates that no definition will be given.

    . The interpretation of the call of a virtual function depends on
      the type of the object for which it is called (the dynamic 
      type), whereas the interpretation of a call of a non-virtual 
      member function depends only on the type of the pointer or
      reference denoting that object (the static type) [1#].

    . Pointer to an abstract class can hold pointers to any derived
      (non-abstract) class.
      | Shape* fig1 = new Shape();      // error (shape is abstract)
      | Shape* fig2 = new Circle();     // OK


Reference .
. [#1]ISO C++ Standard, Section 10.3, paragraph 9.