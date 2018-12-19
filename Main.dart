import "CoolLibrary.dart";

main()=>helloDart();

helloDart(){
  var name = "Shingirai";
  var surname = "Chanakira";
  print("${name} ${surname}");

  Person person = new Person();
  print(person);
  print(new Student().nickName);

  Teacher teacher = new Teacher();
  teacher.firstName = "Mathias";
  teacher.lastName = "Mhere";
  teacher.subject = "Maths";
  print(teacher.toString());

  Headmaster headmaster = new Headmaster();
  headmaster.firstName = "Misheck";
  headmaster.lastName = "Chishaka";
  headmaster.subject = "English";
  print(headmaster);

  IGreetable greetable = new IGreetable();
  var message = greetable.sayHello("Jah B");
  print(message);
}

class Person{

  var _firstName;
  var _lastName;

  get firstName => _firstName;
  set firstName(firstName) => _firstName = firstName;

  get lastName => _lastName;
  set lastName(lastName) => _lastName = lastName;

}

class Student implements Person{

  var _firstName;
  var _lastName;
  var nickName = "The Name";

  get firstName => _firstName;
  set firstName(firstName) => _firstName = firstName;

  get lastName => _lastName;
  set lastName(lastName) => _lastName = lastName;

}

class Teacher{
  String _firstName;
  String _lastName;
  String _subject;

  get firstName => _firstName;
  set firstName(firstName) => _firstName = firstName;

  get lastName => _lastName;
  set lastName(lastName) => _lastName = lastName;

  get subject => _subject;
  set subject(subject) => _subject = subject;

  @override
  String toString() {
    return "${this._firstName} ${this._lastName} ${this._subject}";
  }
}

class Headmaster extends Teacher{
}