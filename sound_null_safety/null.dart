// contact.dart
class Contact {
  final String name;       // Must never be null
  final String phone;      // Must never be null
  final String? email;     // Nullable

  Contact({
    required this.name,
    required this.phone,
    this.email,
  });

  @override
  String toString() {
    return 'Name: $name, Phone: $phone, Email: ${email ?? "No email"}';
  }
}

// main.dart
import 'contact.dart';

void main() {
  // ✅ Non-nullable fields must be provided
  var contact1 = Contact(name: "Alice", phone: "1234567890", email: "alice@mail.com");

  // ✅ Email can be null
  var contact2 = Contact(name: "Bob", phone: "0987654321");

  print(contact1);
  print(contact2);

  // Example of null-aware operator
  print("Alice’s email length: ${contact1.email?.length ?? 0}");
}
