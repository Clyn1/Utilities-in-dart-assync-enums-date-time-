import 'dart:io';

void main() {
  print("=== Simple Calculator ===");

  // Get first number
  stdout.write("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  // Get second number
  stdout.write("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  // Get operator
  stdout.write("Enter operator (+, -, *, /): ");
  String op = stdin.readLineSync()!;

  double result;

  if (op == "+") {
    result = add(num1, num2);
  } else if (op == "-") {
    result = subtract(num1, num2);
  } else if (op == "*") {
    result = multiply(num1, num2);
  } else if (op == "/") {
    result = divide(num1, num2);
  } else {
    print("Invalid operator!");
    return;
  }

  print("Result: $result");
}

// Functions
double add(double a, double b) => a + b;
double subtract(double a, double b) => a - b;
double multiply(double a, double b) => a * b;
double divide(double a, double b) => b != 0 ? a / b : double.nan;
