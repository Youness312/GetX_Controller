import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;

  int get sum => books.value + pens.value;

  increment() {
    books.value++;
  }

  decrement() {
    if (books.value <= 0) {
      Get.snackbar(
        "Error",
        "Cant be less",
        icon: const Icon(Icons.alarm),
        isDismissible: false,
        duration: const Duration(seconds: 3),
      );
    } else {
      books.value--;
    }
  }

  // about pens
  incrementpens() {
    pens.value++;
  }

  decrementpens() {
    if (pens.value <= 0) {
      Get.snackbar(
        "Error",
        "Cant be less",
        icon: const Icon(Icons.alarm),
        isDismissible: false,
        duration: const Duration(seconds: 3),
      );
    } else {
      pens.value--;
    }
  }
}
