import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/pages/my_cart.dart';
import 'package:learn_getx/pages/my_controller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({super.key});

  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Total Items ',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                const SizedBox(
                  height: 16,
                ),
                Obx(() => Text(
                      c.sum.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    )),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue.shade300),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                  child: const Text(
                    "Back",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
