// This is where the program starts
void main() {
  // 1. Non-nullable variable (must have a value)
  String name = 'Clyn';

  // 2. Nullable variable (can be null)
  int? mathScore;

  // 3. Using ?? operator to assign a value only if it's null
  // If mathScore is null, we set it to 85
  mathScore = mathScore ?? 85;

  // 4. 'const' is for values that never change
  const int maxScore = 100;

  // 5. 'final' means set once only – here it holds the report time
  final DateTime reportDate = DateTime.now();

  // 6. Declaring and initializing scores for other subjects
  int scienceScore = 90;
  int englishScore = 80;

  // 7. Adding all scores (using arithmetic + operator)
  int total = mathScore + scienceScore + englishScore;

  // 8. Getting the average by dividing the total by 3 (double result)
  double average = total / 3;

  // 9. Logical (&&) and comparison (>=) operators to check if student passed
  bool passed = average >= 60 && mathScore >= 40;

  // 10. Using the conditional operator (?:) to decide what message to show
  String result = passed ? "Passed 🎉" : "Failed 😢";

  // 11. Declaring a late variable (assigned later before use)
  late String remark;

  // 12. Setting the remark based on pass/fail result
  if (passed) {
    remark = "Keep up the good work!";
  } else {
    remark = "You need to work harder.";
  }

  // 13. Cascading (.. operator) used to perform many actions on one object (buffer)
  final buffer = StringBuffer()
    ..writeln("📄 Student Report Card") // Write line 1
    ..writeln("=======================") // Write line 2
    ..writeln("Name: $name") // Student name
    ..writeln("Math: $mathScore/$maxScore") // Math score
    ..writeln("Science: $scienceScore/$maxScore") // Science score
    ..writeln("English: $englishScore/$maxScore") // English score
    ..writeln("Total: $total") // Total marks
    ..writeln(
      "Average: ${average.toStringAsFixed(2)}",
    ) // Average marks (2 decimals)
    ..writeln("Result: $result") // Passed or Failed
    ..writeln("Remark: $remark") // Custom message
    ..writeln("Generated on: $reportDate"); // Date report was created

  // 14. Show the final report in the console
  print(buffer.toString());
}
