import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View Product Cards'),
        ),
        body: ProductGrid(),
      ),
    );
  }
}

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Jumlah kolom dalam grid
      ),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return ProductCard(product: products[index]);
      },
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(product.image),
          Text(product.name),
          Text('\$${product.price.toStringAsFixed(2)}'),
          ElevatedButton(
            onPressed: () {
              // Aksi yang diambil saat tombol ditekan
            },
            child: Text('Beli Sekarang'),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  final String image;

  Product({
    required this.name,
    required this.price,
    required this.image,
  });
}

final List<Product> products = [
  Product(name: 'Produk 1', price: 10.99, image: 'assets/product1.jpg'),
  Product(name: 'Produk 2', price: 19.99, image: 'assets/product2.jpg'),
  // Tambahkan lebih banyak produk sesuai kebutuhan
];