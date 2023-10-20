import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_app/app/routes/app_pages.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  const AddProductView({Key? key}) : super(key: key);
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
            onPressed: () => Get.toNamed(Routes.HOME),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 320,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 3),
                    blurRadius: 6,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Image.asset('asset/image/addProduct.png'),
            ),
          ),
          Padding(padding: EdgeInsets.all(8)),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: Text(
              'Upload Image',
              style: TextStyle(
                color: Color(0xFF802C6E),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(16)),
          Container(
            width: 320,
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Product Information",
                      style: TextStyle(fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 7, right: 7)),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Product Name',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5)),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Category',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
