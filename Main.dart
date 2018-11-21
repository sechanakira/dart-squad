main(){
  var name = "Shingirai";
  var surname = "Chanakira";
  print("${name} ${surname}");

  Person person = new Person();
  print(person._lastName);
}

class Person{

  var _firstName;
  var _lastName;

  get firstName => _firstName;
  set firstName(firstName) => _firstName = firstName;

  get lastName => _lastName;
  set lastName(lastName) => _lastName = lastName;

}