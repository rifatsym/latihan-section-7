import 'package:get/get.dart';
import 'package:getx_app/main.dart';

class HomeController extends GetxController {
  var products = <Product>[].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

    products.addAll([
      Product(
        id: 1,
        title: 'Jaket All-Season Adventure',
        price: 99.45,
        description:
            'Create an unforgettable adventure and still look fashionable with our All-Season Adventure Jacket. Designed to meet your needs in a variety of weather and outdoor activities, this jacket is the perfect choice for those looking for a combination of style, comfort and functionality.',
        image: 'asset/klimjacket.jpeg',
        rating: Rating(rate: 4.5, count: 300),
      ),
      Product(
        id: 2,
        title: 'Elegant Executive Multipurpose Bagpack',
        price: 99.45,
        description:
            'Bring a touch of sophistication and executive style to your every step with our Elegant Executive Multi-Purpose Bag. This bag is an ideal combination of functionality and aesthetics creating a great accessory for the professional who is always on the go.',
        image: 'asset/image/backpack.jpg',
        rating: Rating(rate: 4.5, count: 300),
      ),
      Product(
        id: 3,
        title: 'Work Shirt Professional Series',
        price: 99.45,
        description:
            'Look professional and ready to go about your work day with confidence using our Professional Series Work Shirt. This work shirt is an ideal choice for individuals who pursue a combination of a neat appearance and all-day comfort.',
        image: 'asset/image/workshirt.jpg',
        rating: Rating(rate: 4.5, count: 300),
      ),
      Product(
        id: 4,
        title: 'High Performance Sports Bag',
        price: 99.45,
        description:
            'Set yourself up for athletic success with our High Performance Gym Bags. This bag is the key to organizing your sports equipment well and still looking stylish at the gym or field.',
        image: 'asset/image/tas.jpg',
        rating: Rating(rate: 4.5, count: 300),
      ),
      Product(
        id: 5,
        title: 'Urban Elegant Casual Jacket',
        price: 99.45,
        description:
            'Stay warm and look stylish in all weather with our Elegant Urban Casual Jacket. This jacket is the perfect choice for a casual style and still looks trendy in various situations.',
        image: 'asset/image/montbelljaket.jpg',
        rating: Rating(rate: 4.5, count: 300),
      ),
      Product(
        id: 6,
        title: 'T-Shirt Essential Comfort',
        price: 99.45,
        description:
            'Get maximum comfort and timeless style with our Essential Comfort T-Shirt. This t-shirt is the perfect choice for a casual everyday look that still looks trendy.',
        image: 'asset/image/kaos.png',
        rating: Rating(rate: 4.5, count: 300),
      ),
    ]);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

class Product {
  int? id;
  String? title;
  double? price;
  String? description;
  String? image;
  Rating? rating;

  Product({
    this.id,
    this.title,
    this.price,
    this.description,
    this.image,
    this.rating,
  });
}

class Rating {
  double? rate;
  int? count;

  Rating({
    this.count,
    this.rate,
  });
}
