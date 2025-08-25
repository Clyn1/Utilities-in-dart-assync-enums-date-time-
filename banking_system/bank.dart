// Bank Account Management System

// Base class (Abstraction)
abstract class BankAccount {
  String accountHolder;
  double _balance = 0.0; // Encapsulation

  BankAccount(this.accountHolder);

  void deposit(double amount) {
    _balance += amount;
    print("Deposited: $amount | New Balance: $_balance");
  }

  void withdraw(double amount);

  double get balance => _balance; // Getter
}

// Savings Account (Inheritance & Polymorphism)
class SavingsAccount extends BankAccount {
  double interestRate;

  SavingsAccount(String holder, this.interestRate) : super(holder);

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      super._balance -= amount;
      print("Withdrawn: $amount | New Balance: $balance");
    } else {
      print("Insufficient funds!");
    }
  }

  void applyInterest() {
    double interest = balance * interestRate;
    super._balance += interest;
    print("Interest applied: $interest | New Balance: $balance");
  }
}

// Current Account (Inheritance & Polymorphism)
class CurrentAccount extends BankAccount {
  double overdraftLimit;

  CurrentAccount(String holder, this.overdraftLimit) : super(holder);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      super._balance -= amount;
      print("Withdrawn: $amount | New Balance: $balance");
    } else {
      print("Overdraft limit reached!");
    }
  }
}

void main() {
  // Create accounts
  var savings = SavingsAccount("Alice", 0.05);
  var current = CurrentAccount("Bob", 500);

  // Test functionality
  savings.deposit(1000);
  savings.applyInterest();
  savings.withdraw(200);

  print("-----");

  current.deposit(500);
  current.withdraw(800);
  current.withdraw(300);
}
