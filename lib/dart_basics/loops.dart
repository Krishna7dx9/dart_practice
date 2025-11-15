void main() {
  //=============================
  // for loops
  //=============================

  for (int i = 0; i <= 10; i++) {
    print(i);
  }

  //=============================
  // for-in loops
  //=============================

  List<String> fruits = ["Mango", "Banana", "Apple"];

  for (String fruit in fruits) {
    print(fruit);
  }

  Set<String> vegetables = {"Lady Finger", "Tomato"};

  for (String vegetable in vegetables) {
    print(vegetable);
  }

  //=============================
  // for-each loops
  //=============================

  Map<String, int> studentAges = {"Aman": 12, "kris": 421, "Riya": 19};

  studentAges.forEach((name, age) {
    print("$name : $age");
  });

  //=============================
  // while loop
  //=============================

  int i = 10;
  while (i > 0) {
    print("$i is the updated value");
    i -= 1;
  }

  //=============================
  // do-while loop
  //=============================
  var o = 12;
  do {
    print("o is : $o");
    o++;
  } while (o <= 5);

  //=============================
  // break statement
  //=============================

  for (int i = 0; i <= 10; i++) {
    print("i = $i");
    if (i == 5) {
      break;
    }
  }

  //=============================
  // continue statement
  //=============================

  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      continue;
    }
  }

  //=============================
  // Test loops
  //=============================

  // Q1

  for (int i = 1; i <= 20; i++) {
    print("i : $i");
  }

  // Q2
  for (int i = 2; i <= 50; i++) {
    if (i % 2 == 0) {
      print("i:$i");
    }
  }

  //Q3
  for (int i = 1; i <= 10; i++) {
    print("$i*7");
  }

  //Q4
  List<String> favourites = ["Mango", "Banana", "Papaya"];
  for (String favourite in favourites) {
    print(favourite.toUpperCase());
  }

  //Q5
  Map<String, int> studentsMarks = {"Aman": 40, "Kris": 100, "Prince": 98};

  studentsMarks.forEach((name, marks) {
    if (marks > 50) {
      print("$name : $marks");
    }
  });

  // Q6
  int a = 10;
  while (a > 0) {
    print("$a");
    a--;
  }

  //Q7
  int r = 50;
  while (r > 0) {
    print("$r");
    r -= 3;
  }

  //Q8
  int e = 1;
  do {
    print("$e");
    e *= 2;
  } while (e <= 100);

  //Q9
  int num;
  do {
    stdout.write("Enter a number: ");
    num = int.parse(stdin.readLineSync()!);
  } while (num % 2 != 0);
  print("You Entered an even number : $num");

  //Q10
  for (int i = 1; i <= 10; i++) {
    print("i:$i");
    if (i == 5) {
      continue;
    }
  }

  //Q11
  for (int i = 1; i <= 10; i++) {
    if (i == 7) {
      break;
    } else {
      print("i:$i");
    }
  }

  //Q12
  List<int> data = [2, 5, 8, 1, 9, 3];
  for (int number in data) {
    if (number > 4) {
      print("Number is Greater than 4: $number");
    }
  }

  //Q13
  int sum = 0;
  for (int i = 1; i <= 50; i++) {
    sum += i;
    print("The Sum of numbers from 1 to 50 is: $sum");
  }

  //Q14
  for (int i = 1; i <= 5; i++) {
    print("*" * i);
  }
}
