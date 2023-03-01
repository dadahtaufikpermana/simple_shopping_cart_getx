import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:simple_shopping_cart_getx/app/modules/my_cart/views/my_cart_view.dart';

import '../controllers/my_cart_controller.dart';

class TotalPage extends StatelessWidget {
   TotalPage({Key? key}) : super(key: key);
  final MyCartController c = Get.put(MyCartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total Item",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue),
              ),
              SizedBox(height: 20),
              Obx(() => Text("${c.sum.toString()}", style: TextStyle(
                fontSize: 40,
                color: Colors.redAccent
              ),)),
              Container(
                width: 180,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade900
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                  onPressed:()=>Get.back(),
                  child: Text(
                      "Go Back", style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                  ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
