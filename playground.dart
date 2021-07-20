import 'dart:io';

// Functions containing learning code (not doing much)
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

void constantsAndFinal() {
  // Compile time -> Values that are defined and not changed during compilation (int, double variables,... defined in the source code.)
  // Run time -> Values that can't be determined until the run time of the code (user input,...)
  // Never changing variables :

  // final keyword -> The variable is initialized the first time it's used and can be set only once. final value will be known at runtime !!
  final person = stdin.readLineSync();
  print('Hello $person');

  // const keyword -> Like the final keyword, the const keyword is set only once when you know the value at compile time ! And cannot be reassigned.
  const bobAge = 22;
  print(bobAge);
}

void arithmeticOp() {
  // Arithmetic operations -> + - * / ~/ % -expr
  var operand1 = 20;
  var operand2 = 8;

  print(operand1 + operand2);
  print(operand1 - operand2);
  print(operand1 * operand2);
  print(operand1 / operand2);
  print(operand1 ~/ operand2); // division resulting with an integer
  print(operand1 % operand2);
  print(-operand1);

  // Prefix & suffix assignement -> ++value first increments the initial value and then is assigned. value++ is first assigned AND after that it's incrementing.
  var a = 5;
  print('Initial value of a: $a');
  var b = a++; // suffix

  print('Initial value of a after assigning b: $a');
  print('Value of b with a suffix: $b');

  var c = 9;
  print('Initial value of c: $c');
  var d = ++c; //prefix

  print('Initial value of c after assigning d: $c');
  print('Value of d with a prefix: $d');
}

void typeTestOp() {
  // Type test operators -> as, is, is! Return a boolean value if the value is or is! not the desired type
  String word = 'hello';
  int numberTest = 22;
  double smolNum = 2.9;
  bool amIDumb = true;

  print(word is String);
  print(numberTest is int);
  print(smolNum is double);
  print(amIDumb is bool);
  print(word is! double);
}

void bitwiseAndShiftOp() {
  // Those only work on binary numbers so there is no true or false but 1 or 0
  // Bitwise operators -> & = AND, | = OR, ^ = XOR, ~ = unary bitwise (if bit is 1 then it becomes 0)
  // shift operators -> >> = shift all bits to the left , << = shift all bits to the right

  var A = 12;
  var B = 5;

  print(~A); // A complement
  print(~B); // B complement
  print(A & B); // A AND B
  print(A | B); // A OR B
  print(A ^ B); // A XOR B
  print(B << 2); // B shifts all bits to the left 2
  print(A >> 2); // A shifts all bits to the right 2
}

void tempConversion() {
  double fahrenheit = 50.0;
  num celsius = ((fahrenheit - 32) * 5) / 9;
  print(celsius);
}

void testingLists() {
  var foods = ['apple', 'carrot', 'potato'];
  foods.add('curry');
  print(foods);

  var lovedFoods = foods
      .map((food) => 'I love $food')
      .toList(); // mapping through a list and doing something, toList changes it back to a list
  print(lovedFoods);

  List<int> numArray = [1, 2, 3];
  numArray.addAll([4, 5]);
  numArray.removeAt(1);
  print(numArray);
  print(numArray.length);
  numArray.clear(); // deleting all elements
}

void testingSets() {
  // Sets don't have duplicates
  var simpleSet = {1, 2, 3}; // => Set<int>
  print(simpleSet);
  var setOfNumbers = <num>{1, 2, 3, 4, 5};
  print(setOfNumbers);
  Set<String> words = {'angus', 'manga', 'movies'};
  print(words);

  var fruits = <String>{};
  fruits.add('banana');
  fruits.add('apple');
  fruits.add('orange');
  fruits.addAll(['grape', 'lichi']);
  fruits.remove('grape');
  print(fruits);

  print(fruits.contains('ananas'));
  print(fruits.containsAll(['banana', 'apple', 'orange']));

  Set<String> fruitBasket = {'apple', 'orange', 'watermelon', 'grapes'};

  var intersectionSet = fruits.intersection(
      fruitBasket); // contains all the values that are present in both of those sets
  print(intersectionSet);

  // this set contains all the values that appear at least once in each set
  var unionSet = fruits.union(fruitBasket);
  print(unionSet);
}

void testingMaps() {
  var simpleMap = {'a': 1, 'b': 2, 'c': 3}; // => Map<int,String>
  print(simpleMap);

  var numbers = Map<int, String>(); // constructor
  numbers[1] = 'hello';
  numbers[2] = 'bye';
  numbers[3] = 'yo';
  numbers[4] = 'sayonara';
  print(numbers);
  print(numbers[1]);
  print(numbers.length);
  print(numbers.containsKey(1));

  var allValues = numbers.values; // same for keys
  print('Values: $allValues');

  numbers.remove(1); // removes the key & the value
}

void testingForLoops() {
  var paintCatalogues = ['blue', 'green', 'red', 'yellow', 'white'];
  for (var i = 0; i < paintCatalogues.length; i++) {
    print(paintCatalogues[i]);
  }

  var numList = [1, 2, 3, 4, 5, 6];
  for (var num in numList) {
    print(num);
  }

  var evenList = [];
  for (var i = 0; i < numList.length; i++) {
    numList[i] = numList[i] * 3;
    if (numList[i] % 2 == 0) {
      evenList.add(numList[i]);
    }
  }
  print(evenList);
}

// Functions doing really something lol

String hello(String name) {
  return 'Hello $name';
}

num sum(num x, num y) => x + y;

// optional named parameters in {}
printer(num n, {String? s1, String? s2}) {
  print(n);
  print(s1);
  print(s2);
}

// optional positional parameters in [] must be used in the way they were declared (first who, what and then where)
String mysteryMessage(String who, [String? what, String? where]) {
  var message = '$who';
  if (what != null && where == null) {
    message = '$message said $what';
  } else if (where != null) {
    message = '$message said $what at $where';
  }
  return message;
}

void main() {
  print(hello('Gats'));
  print(sum(2, 3));
  printer(3, s1: 'hello', s2: 'there');
  print(mysteryMessage('Rick', 'fuck you', 'the school'));
}
