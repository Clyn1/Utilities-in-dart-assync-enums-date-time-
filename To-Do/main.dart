import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\n=== TO-DO LIST APP ===");
    print("1. Add Task");
    print("2. View Tasks");
    print("3. Remove Task");
    print("4. Exit");
    stdout.write("Choose an option: ");
    String choice = stdin.readLineSync()!;

    if (choice == "1") {
      // Add task
      stdout.write("Enter task: ");
      String task = stdin.readLineSync()!;
      tasks.add(task);
      print("Task added!");

    } else if (choice == "2") {
      // View tasks
      if (tasks.isEmpty) {
        print("No tasks yet.");
      } else {
        print("Your Tasks:");
        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
      }

    } else if (choice == "3") {
      // Remove task
      if (tasks.isEmpty) {
        print("No tasks to remove.");
      } else {
        stdout.write("Enter task number to remove: ");
        int index = int.parse(stdin.readLineSync()!) - 1;
        if (index >= 0 && index < tasks.length) {
          tasks.removeAt(index);
          print("Task removed!");
        } else {
          print("Invalid task number.");
        }
      }

    } else if (choice == "4") {
      print("Goodbye!");
      break;

    } else {
      print("Invalid choice. Try again.");
    }
  }
}
