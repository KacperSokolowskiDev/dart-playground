import 'dart:io';

void introVariables() {
  String? name = stdin.readLineSync();
  print('Hello $name');

  num a = 2;
  print(a);

  int hex = 0xDF43C; //hexadecimal
  print(hex);

  double b = 6.4;
  double exponents = 1.54e5;
  print(b);
  print(exponents);

  int? emptyValue;
  print(emptyValue);
}

void introStrings() {
  print('It\'s a string with an escape character');

  String first = 'hi';
  print(first);

  String s1 = 'Hello ';
  String s2 = 'moshi moshi';
  print(s1 + s2); // string concatenation

  String country = 'Japan';
  print('Fuck I love $country'); // string interpolation

  String multipleLine = """This is a
  multi line
  string
  message""";
  print(multipleLine);
}

void typeInterferances() {
  var movieTitle = 'Pulp Fiction';
  // runtimeType is checking the type of the variable on runtime
  print(movieTitle.runtimeType);

  // type annotation
  var number1 = 6;
  print(number1);

  // number1 = 6.2; This will cause an error because the number1 is type int

  num number2 = 6;
  print(number2);

  number2 = 6.2;
  print(number2); // This is good because the number2 is of type num

  // dynamic type can hold objects of many types.
  dynamic crazyVar = 'Crazy var'; // string
  print('The value is $crazyVar and the type is ${crazyVar.runtimeType}');

  crazyVar = 1218; // int
  print('The value is $crazyVar and the type is ${crazyVar.runtimeType}');

  crazyVar = false; // bool
  print('The value is $crazyVar and the type is ${crazyVar.runtimeType}');
}

void main() {
  introVariables();
  introStrings();
  typeInterferances();
}
