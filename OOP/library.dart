// Book class
class Book {
  String title;
  String author;
  bool _isAvailable = true; // private property

  Book(this.title, this.author);

  bool get isAvailable => _isAvailable;

  void borrowBook() {
    if (_isAvailable) {
      _isAvailable = false;
      print("You borrowed '$title' by $author.");
    } else {
      print("Sorry, '$title' is already borrowed.");
    }
  }

  void returnBook() {
    _isAvailable = true;
    print("You returned '$title'. Thank you!");
  }

  void showInfo() {
    print("Title: $title | Author: $author | Available: $_isAvailable");
  }
}

// User class
class User {
  String name;
  List<Book> borrowedBooks = [];

  User(this.name);

  void borrow(Book book) {
    if (book.isAvailable) {
      book.borrowBook();
      borrowedBooks.add(book);
    } else {
      print("Book not available for borrowing.");
    }
  }

  void returnBook(Book book) {
    if (borrowedBooks.contains(book)) {
      book.returnBook();
      borrowedBooks.remove(book);
    } else {
      print("$name does not have this book.");
    }
  }

  void showBorrowedBooks() {
    print("Books borrowed by $name:");
    for (var book in borrowedBooks) {
      print("- ${book.title}");
    }
    if (borrowedBooks.isEmpty) {
      print("No books borrowed yet.");
    }
  }
}

void main() {
  // Create books
  var book1 = Book("1984", "George Orwell");
  var book2 = Book("The Alchemist", "Paulo Coelho");

  // Create user
  var user = User("Clinton");

  // Show books
  print("=== Library Books ===");
  book1.showInfo();
  book2.showInfo();

  // Borrow books
  print("\n=== Borrowing Books ===");
  user.borrow(book1);
  user.borrow(book2);

  // Show borrowed books
  print("\n=== User's Borrowed Books ===");
  user.showBorrowedBooks();

  // Return a book
  print("\n=== Returning Books ===");
  user.returnBook(book1);

  // Show updated borrowed list
  print("\n=== Updated User's Borrowed Books ===");
  user.showBorrowedBooks();

  // Show library again
  print("\n=== Library Books After Returning ===");
  book1.showInfo();
  book2.showInfo();
}
