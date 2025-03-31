import 'dart:io';

class Inventory {
  Map<String, int> products = {
    'Apple': 6,
    'Banana': 10,
    'Orange': 11,
    'Mango': 4,
    'Grapes': 7,
  };
  List<String> lowStockProducts = [];
  final threshold = 10;

  void displayReport() {
    setCurrentStock();
    print("Inventory Check Report:");
    for (MapEntry<String, int> product in products.entries) {
      if (lowStockProducts.contains(product.key)) {
        print(
          "[RESTOCK ALERT] ${product.key} has a low stock (Only ${product.value} items left)",
        );
      } else {
        print(
          "${product.key} - stock is sufficient (${product.value} items left)",
        );
      }
    }
  }

  void setCurrentStock() {
    for (String product in products.keys) {
      bool isValid = false;
      late int itemQty;

      while (!isValid) {
        try {
          print("Current stock for $product: ");
          itemQty = int.parse(stdin.readLineSync()!);
          isValid = true; // Mark as valid if parsing is successful
        } catch (e) {
          print("Invalid input. Please enter a valid integer for $product.");
        }
      }

      products[product] = itemQty; // Update the product stock
    }
    setLowStockProducts();
  }

  void setLowStockProducts() {
    lowStockProducts.addAll(
      products.keys.where((product) => products[product]! <= threshold),
    );
  }
}
