// Base class (Person)
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print("Hi, I'm $name and I'm $age years old.");
  }
}

// Student class extends Person
class Student extends Person {
  String studentId;
  List<int> _grades = []; // private to encapsulate data

  Student(String name, int age, this.studentId) : super(name, age);

  // Add grade
  void addGrade(int grade) {
    _grades.add(grade);
  }

  // Calculate average grade
  double get averageGrade {
    if (_grades.isEmpty) return 0.0;
    var sum = _grades.reduce((a, b) => a + b);
    return sum / _grades.length;
  }

  // Show student info
  void showInfo() {
    introduce(); // from Person class
    print("Student ID: $studentId");
    print("Grades: $_grades");
    print("Average Grade: ${averageGrade.toStringAsFixed(2)}");
  }
}

void main() {
  // Create students
  var s1 = Student("Clinton", 23, "ST001");
  var s2 = Student("Mary", 21, "ST002");

  // Add grades
  s1.addGrade(80);
  s1.addGrade(90);
  s1.addGrade(70);

  s2.addGrade(88);
  s2.addGrade(95);

  // Show info
  print("=== Student Info ===");
  s1.showInfo();
  print("");
  s2.showInfo();
}
