// task.dart
class Task {
  final String title;        // Non-nullable
  final DateTime? dueDate;   // Nullable
  final bool isDone;         // Non-nullable

  Task({
    required this.title,
    this.dueDate,
    this.isDone = false,
  });

  // Factory constructor to simulate legacy (unsafe) JSON
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      title: json['title'] ?? "Untitled Task",   // Fallback if null
      dueDate: json['dueDate'] != null 
          ? DateTime.tryParse(json['dueDate'])
          : null,
      isDone: json['isDone'] ?? false,
    );
  }

  @override
  String toString() {
    return "$title | Due: ${dueDate ?? "No deadline"} | Done: $isDone";
  }
}

// main.dart
import 'task.dart';

void main() {
  // Simulating unsafe legacy JSON (nulls, missing fields)
  var legacyData = [
    {"title": "Buy milk", "isDone": false},
    {"dueDate": "2025-09-01"}, // Title missing
    {"title": null, "isDone": null}, // Broken
  ];

  // Migrate to null-safe Task objects
  var tasks = legacyData.map((json) => Task.fromJson(json)).toList();

  for (var task in tasks) {
    print(task);
  }
}
