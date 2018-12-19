part of my_library;

abstract class IGreetable{

  String sayHello(String name);

  factory IGreetable(){
    return new Greeter();
  }

}

class Greeter implements IGreetable{

  String sayHello(name){
    return "Makadini va${name}";
  }

}