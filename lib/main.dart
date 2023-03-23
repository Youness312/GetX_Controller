import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/pages/my_cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyCart(),
    );
  }
}
