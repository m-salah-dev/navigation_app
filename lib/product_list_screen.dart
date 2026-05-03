import 'package:flutter/material.dart';
import 'product_detail_screen.dart';
import 'product.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Product 1',
      price: 29.99,
      description: 'This is a great product that you will love!',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Product(
      name: 'Product 2',
      price: 49.99,
      description: 'This product is even better than the first one!',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Product(
      name: 'Product 3',
      price: 19.99,
      description: 'A budget-friendly option that still delivers quality.',
      imageUrl: 'https://via.placeholder.com/150',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Details')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(products[index].imageUrl),
            title: Text(products[index].name),
            subtitle: Text('\$${products[index].price}'),
            onTap: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailScreen(product: products[index]),
                ),
              );
              if (result != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('You selected: $result')),
                );
              }
            },
          );
        },
      ),
    );
  }
}
