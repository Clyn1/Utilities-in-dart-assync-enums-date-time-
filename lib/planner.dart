import 'dart:io'; // Allows reading user input from terminal
import 'package:intl/intl.dart'; // Used for formatting and parsing date/time strings

// ✅ OOP: Defining a class to represent a Task
class Task {
  String name; // Task title
  DateTime deadline; // Deadline of the task
  bool isCompleted; // Status of task

  // Constructor initializes name and deadline; defaults 'isCompleted' to false
  Task(this.name, this.deadline) : isCompleted = false;

  // ✅ Getter method: Returns task status based on whether it's completed
  String get status => isCompleted ? '✅ Done' : '⏳ Pending';

  // Returns a string showing how much time is left until the deadline
  String timeLeft() {
    final now = DateTime.now(); // 🕒 Date Utility
    final diff = deadline.difference(now); // Calculate duration left
    return diff.isNegative
        ? '⏰ Past due!' // If deadline has passed
        : '${diff.inHours} hours left';
  }
}

// ✅ Collections: List to store all tasks
List<Task> tasks = [];

// This function controls the app's main loop and logic
// ✅ Async Programming: It returns a Future and uses 'await' for async behavior
Future<void> runPlanner() async {
  print('📅 Welcome to Your Daily Planner!\n');
  print('Today is: ${DateFormat('EEEE, MMM d, yyyy').format(DateTime.now())}\n'); // 🕒 Date Formatting

  while (true) {
    // Show menu options
    print('Choose an action:');
    print('1. Add Task');
    print('2. View Tasks');
    print('3. Mark Task as Complete');
    print('4. Exit');

    String? input = stdin.readLineSync(); // 📥 Read user input

    switch (input) {
      case '1':
        await addTask(); // Call function to add task
        break;
      case '2':
        viewTasks(); // Call function to display all tasks
        break;
      case '3':
        await completeTask(); // Call function to mark a task done
        break;
      case '4':
        print('👋 Goodbye!');
        return; // Exit the loop and end the program
      default:
        print('❌ Invalid choice.\n'); // Handle wrong input
    }
  }
}

// Function to add a new task
Future<void> addTask() async {
  stdout.write('Enter task name: ');
  String? name = stdin.readLineSync(); // Read task name

  stdout.write('Enter deadline (yyyy-MM-dd HH:mm): ');
  String? dateInput = stdin.readLineSync(); // Read deadline as string

  try {
    // 🕒 Parse the string to a DateTime object
    DateTime deadline = DateFormat('yyyy-MM-dd HH:mm').parse(dateInput!);
    tasks.add(Task(name!, deadline)); // ✅ OOP: Create new Task object and add to list
    print('✅ Task added!\n');
  } catch (e) {
    print('❌ Invalid date format.\n'); // Handle parsing error
  }
}

// Function to view all tasks
void viewTasks() {
  if (tasks.isEmpty) {
    print('📭 No tasks yet.\n');
    return;
  }

  for (int i = 0; i < tasks.length; i++) {
    final task = tasks[i];
    // 🧾 Display each task's name, deadline, status, and time left
    print(
        '${i + 1}. ${task.name} – ${DateFormat('MMM d, hh:mm a').format(task.deadline)} – ${task.status} – ${task.timeLeft()}');
  }
  print('');
}

// Function to mark a task as completed
Future<void> completeTask() async {
  viewTasks(); // Show current tasks
  stdout.write('Enter task number to mark complete: ');
  String? input = stdin.readLineSync(); // Get user input

  int? index = int.tryParse(input ?? '');
  if (index != null && index > 0 && index <= tasks.length) {
    tasks[index - 1].isCompleted = true; // ✅ Update task property (OOP)
    print('🎉 Task marked as complete!\n');
  } else {
    print('❌ Invalid task number.\n'); // Handle invalid input
  }
}
