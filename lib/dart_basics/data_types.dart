//enum Weather
enum Weather { rainy, cloudy, sunny }

//enum Colours
enum Colours { red, blue, purple }

int i = 0;
int sum = 0;

 sumOfList(List<int> numbers1) {
  if (i == numbers1.length) {
    print("The Sum is : $sum");
    return sum;
  } else if (i < numbers1.length) {
    sum = sum + numbers1[i];
    print("Index : $i, Value : ${numbers1[i]}");
    i++;

    return sumOfList(numbers1);
  }
}

void main() {
  //=============================
  // 1. Primitive / Single-value types
  //=============================

  //int - Integer Number
  int myAge = 20;
  print("My Age : $myAge");

  //double - Decimal numbers
  double height = 5.7;
  print("My Height: $height");

  //num parent type for int and double
  num score = 95;
  print("Score : $score");
  score = 45;
  print("Updated score : $score");

  //bool - true / false
  bool isBoy = true;
  print("Is this Lsan : $isBoy");

  //String - text
  String name = "Krish Sharma";
  print("My Name is : $name");

  //dynamic can hold any type
  dynamic value = 10;
  print(value);
  value = "10.3650";
  print(value);

  //Object - general type
  Object obj = 452;
  print("This is Object Value : $obj");
  obj = "Hey, I am string now from Object";
  print("Hey, th8is is the Updated Value of Object Now : $obj");

  // Null - Absence of value
  String? onion;
  print("The Value of this Onion String is : $onion");
  // and we can also assign the value now
  onion = "Hey I am the new value of Onion String";
  print(onion);

  //=============================
  // 2. Collections / Compound types
  //=============================

  //List - Ordered Collection, Allowing Duplicates
  List<String> fruits = ["Apple", "Banana", "Mango"];
  print("Fruits: $fruits");
  fruits.add("Orange");
  print("Updated Fruits : $fruits");

  //Set - Unordered Collection of unique Item
  Set<int> numbers = {1, 2, 3, 5};
  print(numbers.toString());
  numbers.add(4);
  print("Updated numbers : $numbers");

  //Map - Collection of "Key:Value" Pairs
  Map<String, dynamic> person = {
    "name": "Krish",
    "age": 23,
    "isStudent": false,
  };
  print("Person:$person");
  person["city"] = "Mathura";
  print("updated Person:$person");

  //=============================
  // 3. Special types
  //=============================

  //Symbol
  Symbol sym = #ThisIsASymbol;
  print("Symbol:$sym");

  //Runes - Unicode Characters
  Runes smile = Runes('\u{1F60A}');
  print("Smiley Emoji : $smile");
  print("Smiley : ${String.fromCharCode(smile as int)}");

  //enum Weather
  var todayWeather = Weather.cloudy;
  print(todayWeather.toString());

  //=============================
  //Dart Data Types Test
  //=============================

  var nameAge = "Krishna Sharma - 19";
  print(nameAge);

  final birthYear = 2005;
  const pi = 5.32;
  print(birthYear.toString());
  print(pi.toString());

  late String favouriteCity;
  favouriteCity = "Vrindavan";
  print("My favourite City is : $favouriteCity");

  dynamic variable = 52;
  variable = "hey, I am string now";
  variable = true;
  print(variable);

  Object testObj = "I am Your Test";
  testObj = 47;
  print(testObj.toString());

  //=============================
  // Array / List
  //=============================

  // Declaring a List
  List<int> number = [9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  // Accessing elements
  print("Index 0 : Number : ${number[0]}");

  // Traversal
  for (int i = 0; i < number.length; i++) {
    print("Index $i : Number : ${number[i]}");
  }

  // Adding Elements
  number.add(1000);
  // print(number);

  // numbers.insert(0, 9);
  print("$number");

  // Removing elements
  numbers.remove(9);
  print("$number");
  number.remove(9);
  print("$number");

  number.removeAt(5);
  print("$number");

  // Other useful methods
  print("$numbers.length");
  print("$numbers.contains(5)");
  // numbers.sort();
  print("$numbers");
  // numbers.reversed;
  print("$numbers");

  // Set

  Set<String> myFavouritesColours = {"Red", "Blue", "Black"};
  print(myFavouritesColours.toString());
  myFavouritesColours.add("Blue");
  print(myFavouritesColours.toString());

  // Map

  Map<String, dynamic> library = {"Roll no": 117, "Roll no of him": 63};
  print(library.toString());

  // Runes

  Runes heart = Runes('U+FE0F');
  print(heart.toString());

  // Symbol

  Symbol flutter = #Flutter;
  print(flutter.toString());

  var myColour = Colours.blue;
  print(myColour.toString());

  String? boss;
  boss = "Me";
  print(boss);
}
