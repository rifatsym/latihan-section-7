import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_app/test.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Fake Store',
          style: TextStyle(color: Color(0xFF802C6E), fontFamily: "Poppins"),
        ),
        centerTitle: true,
        leading: Image.asset('asset/logo.png'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(fontSize: 16),
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                hintText: 'Search...',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {},
            ),
          ),
          Expanded(
            child: ProductGrid(),
          ),
        ],
      ),
    );
  }
}

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
  Product(name: 'Produk 3', price: 20.99, image: 'assets/Image/Logo.png'),
  Product(name: 'Produk 4', price: 15.99, image: 'assets/product1.jpg'),
  Product(name: 'Produk 5', price: 12.99, image: 'assets/product2.jpg'),
  Product(name: 'Produk 6', price: 30.99, image: 'assets/Image/Logo.png'),
];
