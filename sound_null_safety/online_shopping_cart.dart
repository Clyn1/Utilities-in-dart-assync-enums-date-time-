class Product {
  final String name;
  final double price;
  final String? description;   // Nullable description
  final double? discount;      // Nullable discount (e.g., 0.1 = 10%)

  Product({
    required this.name,
    required this.price,
    this.description,
    this.discount,
  });

  double finalPrice() {
    return price - (price * (discount ?? 0)); // apply discount if available
  }

  void display() {
    print("🛒 $name");
    print("Price: \$${price.toStringAsFixed(2)}");
    print("Discount: ${discount != null ? '${(discount! * 100).toStringAsFixed(0)}%' : 'No discount'}");
    print("Final Price: \$${finalPrice().toStringAsFixed(2)}");
    print("Description: ${description ?? "No description available"}");
  }
}

void main() {
  var p1 = Product(name: "Laptop", price: 1200.0, description: "Gaming Laptop", discount: 0.15);
  var p2 = Product(name: "Mouse", price: 25.0); // no discount, no description
  var p3 = Product(name: "Keyboard", price: 50.0, discount: null); // explicitly null discount

  for (var product in [p1, p2, p3]) {
    print("==========");
    product.display();
  }
}
