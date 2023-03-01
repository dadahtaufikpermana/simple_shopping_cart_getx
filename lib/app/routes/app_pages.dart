import 'package:get/get.dart';

import '../modules/my_cart/bindings/my_cart_binding.dart';
import '../modules/my_cart/views/my_cart_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MY_CART;

  static final routes = [
    GetPage(
      name: _Paths.MY_CART,
      page: () => MyCartView(),
      binding: MyCartBinding(),
    ),
  ];
}
