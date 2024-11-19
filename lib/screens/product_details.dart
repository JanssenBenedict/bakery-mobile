import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String name;
  final int price;
  final String description;
  final String category;
  final int quantity;

  const ProductDetails({
    super.key,
    required this.name,
    required this.price,
    required this.description,
    required this.category,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product Name: $name",
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              price == 0 ? "Price: FREE" : "Price: $price",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10),
            Text(
              "Description: $description",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10),
            Text(
              "Category: $category",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10),
            Text(
              quantity == 0 ? "Amount: OUT OF STOCK" : "Amount: $quantity",
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
