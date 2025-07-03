// Dart Programming Recap - By Clyn

// Entry point
void main() {
  print("=== Dart Recap Starts ===\n");

  variablesAndTypes();
  typeConversion();
  controlFlow();
  loopsAndJumpStatements();
  functionsAndLambdas();
  collections();
  objectOrientedProgramming();
  nullSafety();

  print("\n=== Dart Recap Ends ===");
}

// 1. Variables and Data Types
void variablesAndTypes() {
  print("\n[1] Variables and Data Types");

  int age = 25;
  double height = 5.9;
  bool isStudent = true;
  String name = "Clyn";

  print("Name: $name, Age: $age, Height: $height, Student: $isStudent");
}

// 2. Type Conversion
void typeConversion() {
  print("\n[2] Type Conversion");

  String numberStr = "42";
  int number = int.parse(numberStr);
  double doubleNum = number.toDouble();
  String toStr = doubleNum.toString();

  print("Parsed int: $number, To double: $doubleNum, Back to String: $toStr");
}

// 3. Control Flow - if/else and switch
void controlFlow() {
  print("\n[3] Control Flow");

  int score = 75;

  if (score >= 80) {
    print("Grade: A");
  } else if (score >= 60) {
    print("Grade: B");
  } else {
    print("Grade: C");
  }

  String fruit = "apple";
  switch (fruit) {
    case "apple":
      print("You chose apple.");
      break;
    case "banana":
      print("You chose banana.");
      break;
    default:
      print("Unknown fruit.");
  }
}

// 4. Loops and Jump Statements
void loopsAndJumpStatements() {
  print("\n[4] Loops and Jump Statements");

  // for loop
  for (int i = 0; i < 3; i++) {
    print("For Loop i: $i");
  }

  // while loop
  int count = 0;
  while (count < 2) {
    print("While Loop count: $count");
    count++;
  }

  // do-while loop
  int j = 0;
  do {
    print("Do-While Loop j: $j");
    j++;
  } while (j < 1);

  // break and continue
  for (int k = 0; k < 5; k++) {
    if (k == 3) break;
    if (k == 1) continue;
    print("Loop with break/continue: $k");
  }
}

// 5. Functions & Lambda Expressions
void functionsAndLambdas() {
  print("\n[5] Functions & Lambda");

  int add(int a, int b) => a + b;
  int result = add(5, 3);
  print("Add result: $result");

  var greet = (String name) => "Hello, $name!";
  print(greet("Clyn"));
}

// 6. Collections (List, Set, Map)
void collections() {
  print("\n[6] Collections");

  List<String> fruits = ["apple", "banana", "mango"];
  Set<int> numbers = {1, 2, 2, 3}; // set removes duplicates
  Map<String, String> capitals = {
    "Kenya": "Nairobi",
    "Uganda": "Kampala"
  };

  print("Fruits: $fruits");
  print("Unique Numbers: $numbers");
  print("Capital of Kenya: ${capitals["Kenya"]}");
}

// 7. Object-Oriented Programming (Class, Constructor, Inheritance)
void objectOrientedProgramming() {
  print("\n[7] Object-Oriented Programming");

  var student = Student("Clyn", 101);
  student.displayInfo();

  var grad = GraduateStudent("Mary", 202, "Computer Science");
  grad.displayInfo();
}

// Class
class Student {
  String name;
  int id;

  Student(this.name, this.id);

  void displayInfo() {
    print("Student: $name, ID: $id");
  }
}

// Inheritance
class GraduateStudent extends Student {
  String major;

  GraduateStudent(String name, int id, this.major) : super(name, id);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Major: $major");
  }
}

// 8. Null Safety
void nullSafety() {
  print("\n[8] Null Safety");

  String? maybeName = null;
  print("maybeName is: ${maybeName ?? 'No name'}");

  maybeName = "Clyn";
  print("Updated maybeName: $maybeName");
}
