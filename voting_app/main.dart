import 'dart:io';
import 'package:collection/collection.dart';

class Candidate {
  final String name;
  int votes = 0;

  Candidate(this.name);
}

void main() {
  // Step 1: Setup candidates
  final candidates = [
    Candidate("Alice"),
    Candidate("Bob"),
    Candidate("Charlie"),
  ];

  print("🗳 Welcome to the Voting System!");
  print("Candidates:");
  for (var i = 0; i < candidates.length; i++) {
    print("${i + 1}. ${candidates[i].name}");
  }

  // Step 2: Take user input
  stdout.write("\nEnter the number of your chosen candidate: ");
  final input = stdin.readLineSync();
  final choice = int.tryParse(input ?? "");

  if (choice == null || choice < 1 || choice > candidates.length) {
    print("❌ Invalid choice. Exiting...");
    return;
  }

  // Step 3: Record vote
  candidates[choice - 1].votes++;
  print("\n✅ You voted for ${candidates[choice - 1].name}");

  // Step 4: Show results
  print("\n📊 Voting Results:");
  for (var c in candidates) {
    print("${c.name}: ${c.votes} votes");
  }

  // Step 5: Declare winner
  final winner = candidates.maxBy((c) => c.votes);
  print("\n🏆 Winner: ${winner?.name}");
}
