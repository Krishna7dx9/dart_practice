void main() {
  //=============================
  // Simple if
  //=============================

  int age = 18;
  if (age >= 18) {
    print("You are adult.");
  }

  //=============================
  // if - else
  //=============================

  int marks = 45;
  if (marks >= 50) {
    print("You Passed");
  } else {
    print("You Failed");
  }

  //=============================
  // if-else if-else ladder
  //=============================

  int score = 75;
  if (score >= 90) {
    print("Excellent");
  } else if (score >= 70) {
    print("Good");
  } else if (score >= 50) {
    print("Average");
  } else {
    print("Poor");
  }

  //=============================
  // Nested-if
  //=============================

  int x = 15;
  int y = 10;
  if (x > 10) {
    if (y < 15) {
      print("x is Greater than 10 and y is less than 15");
    }
  }

  //=============================
  // switch-case
  //=============================

  String day = "Friday";
  switch (day) {
    case "Monday":
      print("Start of the Week");
      break;
    case "Wednesday":
      print("Midweek day");
      break;
    case "Friday":
      print("Almost Weekend");
      break;
    case "Sunday":
      print("Rest day");
      break;
    default:
      print("Regular Day");
  }

  //=============================
  //Ternary/ Conditional Operator
  //=============================

  int temp = 35;
  String weather = temp > 30 ? "Hot" : "Pleasant";
  print(weather);

  //=============================
  //Complex Combined Condition
  //=============================

  bool isLoggedIn = true;
  bool hasPermission = false;
  if (isLoggedIn && hasPermission) {
    print("Access granted to premium content");
  } else if (isLoggedIn && !hasPermission) {
    print("Access granted to free content Only");
  } else {
    print("Please login to access content");
  }

  //=============================
  //Conditionals Test
  //=============================

  //Q1 Solution

  int a = 25;
  if (a > 0) {
    print("a is Positive");
  } else if (a < 0) {
    print("a is Negative");
  } else {
    print("a is 0");
  }

  // Q2 Solution

  score = 45;
  if (score >= 35) {
    print("Pass");
  }

  //Q3 Solution

  int number = 6;
  if (number % 2 == 0) {
    print("Even Number");
  } else {
    print("Odd Number");
  }

  //Q4 Solution

  double purchaseAmount = 3000;
  double finalBill;

  if (purchaseAmount > 5000) {
    finalBill = purchaseAmount * 0.80;
  } else if (purchaseAmount < 2000) {
    finalBill = purchaseAmount;
  } else {
    finalBill = purchaseAmount * 0.90;
  }
  print("Final Bill : $finalBill");

  //Q5

  age = 19;
  bool hasGraduated = true;
  if (age >= 18) {
    if (hasGraduated == true) {
      print("Eligible");
    } else {
      print("Not Eligible");
    }
  }
  if (age < 18) {
    print("Not Eligible (Age<18) ");
  }

  //Q6
  int input = 5;
  switch (input) {
    case (1):
      print("Monday");
      break;
    case (2):
      print("Tuesday");
      break;
    case (3):
      print("Wednesday");
      break;
    case (4):
      print("Thursday");
      break;
    case (5):
      print("Friday");
      break;
    case (6):
      print("Saturday");
      break;
    case (7):
      print("Sunday");
      break;
    default:
      print("Enter Correct Input from 1-7");
      break;
  }

  //Q7
  a = 4;
  String result = a % 2 == 0 ? "Even" : "Odd";
  print(result);

  //Q8
  //Leap Year Divisible by 4 and not divisible by 100 unlesss it is divisible by 400
  int year = 2024;
  if (year % 400 == 0) {
    print("$year is Leap Year");
  } else if (year % 100 == 0) {
    print("$year is not leap year");
  } else if (year % 4 == 0) {
    print("$year is Leap Year");
  } else {
    print("$year is not leap year");
  }

  //Q9
  String ch = "A";
  if (ch == "a" ||
      ch == "e" ||
      ch == "i" ||
      ch == "o" ||
      ch == "u" ||
      ch == "A" ||
      ch == "E" ||
      ch == "I" ||
      ch == "O" ||
      ch == "U") {
    print("$ch is Vowel");
  } else {
    print("$ch is not Vowel");
  }

  //Q10
  String username = "admin";
  String password = "1234";
  if (username == "admin" && password == "1234") {
    print("Login Successful");
  } else {
    print("Invalid Credentials");
  }
}
