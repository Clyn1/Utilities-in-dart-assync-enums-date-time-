class Student {
  final String name;
  final List<int> grades;
  final String? remark; // nullable field

  Student({
    required this.name,
    required this.grades,
    this.remark,
  });

  double get average {
    if (grades.isEmpty) return 0.0;
    return grades.reduce((a, b) => a + b) / grades.length;
  }

  void displayInfo() {
    print("🎓 Student: $name");
    print("Grades: ${grades.isNotEmpty ? grades.join(", ") : "No grades yet"}");
    print("Average: ${average.toStringAsFixed(2)}");
    print("Remark: ${remark ?? "No remarks provided"}");
  }
}

void main() {
  var s1 = Student(name: "Alice", grades: [90, 85, 92], remark: "Excellent progress");
  var s2 = Student(name: "Bob", grades: [70, 65, 72]); // No remark
  var s3 = Student(name: "Charlie", grades: []); // Empty grades, handled safely

  for (var student in [s1, s2, s3]) {
    print("==========");
    student.displayInfo();
  }
}
