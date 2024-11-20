import 'package:flutter/material.dart';
import 'package:warung_anomali/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text("Price: ${product.fields.price}"),
            const SizedBox(height: 8),
            Text("Description: ${product.fields.description}"),
            const SizedBox(height: 8),
            Text("Color: ${product.fields.color}"),
            const SizedBox(height: 8),
            Text("Stock: ${product.fields.stock}"),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the product list
              },
              child: const Text('Back to Product List'),
            ),
          ],
        ),
      ),
    );
  }
}
