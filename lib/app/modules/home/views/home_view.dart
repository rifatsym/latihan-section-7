import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
          style: TextStyle(color: Color(0xFF802C6E), fontFamily: 'Poppins'),
        ),
        leading: Center(
          child: IconButton(
            icon: Image.asset('asset/logo.png'),
            onPressed: () {},
          ),
        ),
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
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF802C6E)),
              ),
              child: Text(
                'Add New Product',
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          )
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
  Product(name: 'Produk 1', price: 10.99, image: 'asset/klimjacket.jpeg'),
  Product(name: 'Produk 2', price: 19.99, image: 'asset/image/backpack.jpg'),
  Product(name: 'Produk 2', price: 19.99, image: 'asset/image/kaos.png'),
  Product(name: 'Produk 2', price: 19.99, image: 'asset/image/tas.jpg'),
  Product(name: 'Produk 2', price: 19.99, image: 'asset/image/jakethnm.jpg'),
  Product(name: 'Produk 2', price: 19.99, image: 'asset/image/celana.jpg'),
];
