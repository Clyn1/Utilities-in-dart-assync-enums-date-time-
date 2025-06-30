# Dart Task Processor

This is a simple Dart console application that demonstrates how to use functions, anonymous functions, and closures to process and print a list of tasks in different formats.

## Features

- Prints a list of tasks using different formatting styles
- Demonstrates:
  - Named functions
  - Anonymous (arrow) functions
  - Closures (functions that return functions)
  - Optional and named parameters

## Example Output

```
📋 Task Processor Started

🔧 Using Named Function:
• Finish Dart project
• Push to GitHub
• Share with mentor

🚀 Using Anonymous Function:
-> FINISH DART PROJECT
-> PUSH TO GITHUB
-> SHARE WITH MENTOR

🎯 Using Closure with Custom Prefix:
✓ Finish Dart project
✓ Push to GitHub
✓ Share with mentor

🔍 Showing indexed tasks:
1. Task: Finish Dart project
2. Task: Push to GitHub
3. Task: Share with mentor
```

## How to Run

1. Make sure you have [Dart SDK](https://dart.dev/get-dart) installed.
2. Clone or download this repository.
3. Open a terminal in the project directory.
4. Run the app with:

   ```sh
   dart run main.dart
   ```

## File Structure

- `main.dart` — Main application file containing all logic and examples.

## Concepts Demonstrated

- **Named Functions:** Functions with a name, e.g., `formatTask`.
- **Anonymous Functions:** Functions without a name, used inline.
- **Closures:** Functions that capture variables from their surrounding scope, e.g., `makeFormatter`.
- **Optional and Named Parameters:** Used in `printTasks` to optionally show task indices.

---

Feel free to modify the task list or add new formatters to experiment!