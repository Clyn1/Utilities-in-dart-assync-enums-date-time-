// Base class: Account
class Account {
  String accountNumber;
  String owner;
  double _balance = 0; // private balance

  Account(this.accountNumber, this.owner);

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited $amount into $accountNumber. New Balance: $_balance");
    } else {
      print("Deposit amount must be positive.");
    }
  }

  void withdraw(double amount) {
    if (amount <= _balance && amount > 0) {
      _balance -= amount;
      print("Withdrew $amount from $accountNumber. New Balance: $_balance");
    } else {
      print("Insufficient funds or invalid amount.");
    }
  }

  void showAccountInfo() {
    print("Account: $accountNumber | Owner: $owner | Balance: $_balance");
  }
}

// Savings Account (Inheritance)
class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(String accountNumber, String owner, this.interestRate)
      : super(accountNumber, owner);

  void addInterest() {
    var interest = balance * interestRate / 100;
    deposit(interest);
    print("Interest of $interest added to $accountNumber");
  }
}

void main() {
  // Create accounts
  var acc1 = Account("ACC001", "Clinton");
  var acc2 = SavingsAccount("ACC002", "Mary", 5);

  // Deposit money
  acc1.deposit(500);
  acc2.deposit(1000);

  // Withdraw money
  acc1.withdraw(200);
  acc2.withdraw(1200);

  // Add interest
  (acc2 as SavingsAccount).addInterest();

  // Show account info
  print("\n=== Account Info ===");
  acc1.showAccountInfo();
  acc2.showAccountInfo();
}
