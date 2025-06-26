# Student Report Card (Dart Project)

This Dart project calculates a student's total and average marks, checks if they passed, and prints a well-formatted report using what I’ve learned today.

## Concepts Used:
- Null safety (`String?`, `??`)
- `const`, `final`, and `late`
- Arithmetic & logical operators
- Conditional expression (`? :`)
- Cascades (`..`)
- Basic Dart structure

## How to Run

1. Make sure Dart is installed: https://dart.dev/get-dart
2. Open terminal and navigate to the project folder.
3. Run:

```bash
dart lib/main.dart

Output Example

📄 Student Report Card
=======================
Name: Clyn
Math: 85/100
Science: 90/100
English: 80/100
Total: 255
Average: 85.00
Result: Passed 🎉
Remark: Keep up the good work!
Generated on: 2025-06-26 10:30:00.000


---

## 💡 How to Push It to GitHub

1. Create a folder named `student_report`.
2. Place the files:
   - `main.dart` inside `student_report/lib/`
   - `README.md` in the root.
3. Open terminal:
```bash
cd student_report
git init
git add .
git commit -m "Add student report card project"
git remote add origin git@github.com:YourUsername/student_report.git
git push -u origin main