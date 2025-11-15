void main() {
  //=============================
  // 1. Arithmetic Operators
  //=============================

  int a = 19;
  int b = 4;
  print("Addition: ${a + b}");
  print("Subtraction: ${a - b}");
  print("Multiplication: ${a * b}");
  print("Division: ${a / b}");
  print("Integer Division: ${a ~/ b}");
  print("Modulo: ${a % b}");
  a++; //Increment
  b--; //decrement
  print("Updated a : $a, Updated b : $b");

  //=============================
  // 2. Assignment Operators
  //=============================

  int c = 10;
  print("Original c : $c");
  c += 5;
  print("c+=5 : $c");
  c -= 3;
  print("c-=3: $c");
  c %= 7;
  print("c%=7: $c");
  c *= 63;
  print("c*=63: $c");
  c ~/= 4;
  print("c~/=4: $c");

  //=============================
  // 3. Relational Operators
  //=============================

  int x = 10;
  int y = 20;
  print("x==y : ${x == y}");
  print("x!=y : ${x != y}");
  print("x<y: ${x < y}");
  print("x>y: ${x > y}");
  print("x>=y:${x >= y}");
  print("x<=y:${x <= y}");

  //=============================
  // 4. Logical Operators
  //=============================

  bool isAdult = true;
  bool hasTicket = false;
  print("IS Adult and has Ticket : ${isAdult && hasTicket}");
  print("Is Adult or Has Ticket : ${isAdult | hasTicket}");
  print("Not Adult : ${!isAdult}");

  //=============================
  // 5. Bitwise Operators
  //=============================

  int m = 6; //0b110
  int n = 9; //0b011
  print("m & n: ${m & n}");
  print("m | n: ${m | n}");
  print("m ^ n: ${m ^ n}");
  print("~m: ${~m}");
  print("m>>1: ${m >> 1}");
  print("m<<1: ${m << 1}");

  //=============================
  // 6. Type-test Operators
  //=============================

  var value = 45;
  print("value is String? : ${value is String}");
  print("value is! bool? : ${value is! bool}");

  //=============================
  // 7. Null-aware Operators
  //=============================

  String? teacher;
  print(
    "teacher length? : $teacher",
  ); //Due to Some reason's the using null aware access in this code is causing error so avoided - $teacher?.length}
  teacher ??= "Krish"; // assign if null
  print("teacher after assign : $teacher");

  //=============================
  // 8. Null-coalescing Operator
  //=============================

  String? nickName;
  String displayName = nickName ?? "nick";
  print(displayName);

  int? nullableNumber;
  int result = (nullableNumber ?? 5) * 2 + a ~/ b;
  print("Combined Expression Result : $result");

  //=============================
  // Operators Test
  //=============================

  a = 12;
  b = 5;
  print("Addition: ${a + b}");
  print("Subtraction: ${a - b}");
  print("Multiplication: ${a * b}");
  print("Integer Division: ${a ~/ b}");
  print("Modulo: ${a % b}");
  a += 3;
  b *= 2;
  print("Updated a : $a");
  print("Updated b: $b");

  x = 8;
  y = 12;
  print("x is less than y  : x<y");
  print("x is not equal to y : x!=y");
  print("x is greater then or equal to 8: x>=8");

  bool isLoggedIn = true;
  bool hasPermission = false;
  print(
    "The user is logged in and has Permission: ${isLoggedIn && hasPermission} ",
  );
  print(
    "The user is logged in or has permission: ${isLoggedIn | hasPermission}",
  );
  print("Not Logged In : ${!isLoggedIn}");

  int p = 9;
  int q = 5;
  print("Let's Perform AND on Binary: ${p & q}");
  print("Let's Perform OR on Binary: ${p | q}");
  print("let's Perform XOR on Binary: ${p ^ q}");
  print("Let's Perform Not on Binary p: ~($p)");
  print("Let's Perform Not on Binary q: ~($q)");
  print("Let's Perform Left shift on p by 2 : ${p << 2}");
  print("Let's Perform Left shift on q by 1 : ${q >> 1}");

  dynamic night = 45;
  print("Checking is night int? : ${night is int}");
  print("Checking is night String? : ${night is !String}");

  String? name;
  print("Using null aware access: $name");
  //Due to Some reason's the using null aware access in this code is causing error so avoided - ${name?.length}
  print("Null Coalescing Operator: ${name ?? "Guest"}");

  int? score;
  print("If score is null assign 10 : ${score ??= 10}");
  print("Final result : $score*5+3~/2");
}
