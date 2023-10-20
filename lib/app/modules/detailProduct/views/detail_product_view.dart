import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_app/app/routes/app_pages.dart';

import '../controllers/detail_product_controller.dart';

class DetailProductView extends GetView<DetailProductController> {
  const DetailProductView({Key? key}) : super(key: key);
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
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: 320,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        )
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 110),
              child: Text(
                'Jaket All-Season Adventure',
                style: TextStyle(fontFamily: 'Poppins', color: Colors.black),
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
            )
          ],
        ));
  }
}
