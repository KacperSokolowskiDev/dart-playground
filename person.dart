class Person {
  // instance variables
  String? name;
  String? gender;
  int age = 0;

  // Generative constructor
  Person(this.name, this.gender, this.age);

  // Named constructor, good in special scenarios
  Person.newBorn() {
    this.age = 0;
  }

  // getters => new properties,
  //functions used to retrieve the values of an objects properties. Defined using the 'get' key
  String? get personName => name;

  // setters, functions used to write the values of an objects properties. Defined using the 'set' key
  void set personAge(int val) {
    if (val < 0) {
      print('Age cannot be negative');
    } else {
      this.age = val;
    }
  }

  // instance methods (also called members) can access instance variables
  talking() => print("$name is talking.");
  description() => print(
      'This person is a $gender, and ${gender == 'male' ? 'his' : 'her'} name is $name. ${gender == 'male' ? 'He' : 'She'} is $age years old.');
}

void main() {
  var firstperson = Person('Kacper', 'male', 22);
  var secondperson = Person('Lidia', 'female', 37);
  var thirdperson = Person('John', 'male', 22);
  var youngBorn = Person.newBorn();

  print(firstperson.personName);
  // updating age with setter, if negative throw error print
  thirdperson.personAge = 23;
  print(thirdperson.age);
  print(youngBorn.age);

  firstperson.talking();
  firstperson.description();
  secondperson.description();
}
