import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCartController extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  int get sum=>books.value+pens.value;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => books.value++;

  void decrement() {
    if (books.value <= 0) {
      Get.snackbar("Buying Books", "can not be less than zero",
          icon: Icon(Icons.alarm),
      barBlur:20,
      isDismissible: true,
      duration: Duration(seconds: 3)
      );
    }else{
      books.value--;
    }
  }
  void incrementPens() => pens.value++;

  void decrementPens() {
    if (pens.value <= 0) {
      Get.snackbar("Buying Pens", "can not be less than zero",
          icon: Icon(Icons.alarm),
          barBlur:20,
          isDismissible: true,
          duration: Duration(seconds: 3)
      );
    }else{
      pens.value--;
    }
  }
}
