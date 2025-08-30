class Student {
  final String name;  
  final int? age;          // Nullable age
  final double? grade;     // Nullable grade

  Student({
    required this.name,
    this.age,
    this.grade,
  });

  void printInfo() {
    print("Student: $name");
    print("Age: ${age ?? "Unknown"}"); // null-aware operator
    print("Grade: ${grade?.toStringAsFixed(1) ?? "Not graded yet"}");
  }
}

void main() {
  var s1 = Student(name: "Alice", age: 14, grade: 88.5);
  var s2 = Student(name: "Bob"); // no age or grade yet

  s1.printInfo();
  print("-----");
  s2.printInfo();
}
