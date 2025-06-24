import 'dart:io';
import 'package:intl/intl.dart';

void main() async {
  print('🔤 Dart Utility Application 🔧\n');

  // Get user input
  stdout.write('Enter a string to manipulate: ');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('❗ Invalid input.');
    return;
  }

  // --- 1. String Manipulation ---
  String result = manipulateString(input);

  // --- 2. Collections Demo ---
  String collectionInfo = demoCollections(input);

  // --- 3. Date and Time Logging ---
  String timestamp = logTime();

  // --- Display Results ---
  print('\n--- String Manipulation ---\n$result');
  print('\n--- Collections Output ---\n$collectionInfo');
  print('\n⏰ $timestamp');

  // --- 4. File Handling (Save Log) ---
  final logFile = File('log.txt');
  await logFile.writeAsString(
    '$timestamp\n$result\n$collectionInfo\n------------------\n',
    mode: FileMode.append,
  );

  print('\n📁 Log saved to log.txt');

  // Optional: Read and display file contents
  stdout.write('\nWould you like to read the log file? (y/n): ');
  String? answer = stdin.readLineSync();
  if (answer?.toLowerCase() == 'y') {
    if (await logFile.exists()) {
      String contents = await logFile.readAsString();
      print('\n📄 --- Log File Contents ---\n$contents');
    } else {
      print('❗ Log file does not exist.');
    }
  }
}

String manipulateString(String input) {
  String reversed = input.split('').reversed.join();
  String upper = input.toUpperCase();
  String lower = input.toLowerCase();
  return 'Original: $input\nReversed: $reversed\nUppercase: $upper\nLowercase: $lower';
}

String demoCollections(String input) {
  List<String> words = input.split(' ');
  Set<String> uniqueWords = words.toSet();
  Map<String, int> wordLengths = {
    for (var word in uniqueWords) word: word.length
  };

  return 'Words List: $words\n'
         'Unique Set: $uniqueWords\n'
         'Word Lengths: $wordLengths';
}

String logTime() {
  DateTime now = DateTime.now();
  String formatted = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
  return 'Logged at: $formatted';
}
