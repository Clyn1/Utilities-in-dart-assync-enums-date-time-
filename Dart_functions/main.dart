// File: bin/main.dart

/// Entry point of the app
void main() {
  print("📋 Task Processor Started\n");

  List<String> tasks = [
    "Finish Dart project",
    "Push to GitHub",
    "Share with mentor",
  ];

  // 1. Process using a named formatter
  print("🔧 Using Named Function:");
  printTasks(tasks, formatTask);

  // 2. Process using an anonymous (arrow) function
  print("\n🚀 Using Anonymous Function:");
  printTasks(tasks, (task) => "-> ${task.toUpperCase()}");

  // 3. Using a closure with prefix
  print("\n🎯 Using Closure with Custom Prefix:");
  var bulletFormatter = makeFormatter("✓ ");
  printTasks(tasks, bulletFormatter);

  // 4. Optional and named parameter demo
  print("\n🔍 Showing indexed tasks:");
  printTasks(tasks, numberedFormat, showIndex: true);
}

/// Named function (typed)
String formatTask(String task) {
  return "• $task";
}

/// Accepts a list and a formatting function
void printTasks(
  List<String> items,
  String Function(String) formatter, {
  bool showIndex = false,
}) {
  for (int i = 0; i < items.length; i++) {
    var line = formatter(items[i]);
    if (showIndex) {
      print("${i + 1}. $line");
    } else {
      print(line);
    }
  }
}

/// A function that returns another function (closure)
String Function(String) makeFormatter(String prefix) {
  return (String task) => "$prefix$task";
}

/// Another formatter showing index
String numberedFormat(String task) {
  return "Task: $task";
}
