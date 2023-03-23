import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/pages/total_page.dart';

import 'my_controller.dart';

class MyCart extends StatefulWidget {
  MyCart({super.key});
  final MyController c = Get.put(MyController());

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Books',
                  style: TextStyle(fontSize: 22, color: Colors.amber),
                ),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.redAccent,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          widget.c.increment();
                        },
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Obx(() => Text(
                          widget.c.books.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.redAccent,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          widget.c.decrement();
                        },
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Pens',
                  style: TextStyle(fontSize: 22, color: Colors.amber),
                ),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.redAccent,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          widget.c.incrementpens();
                        },
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Obx(() => Text(
                          widget.c.pens.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.redAccent,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          widget.c.decrementpens();
                        },
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => TotalPage());
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.blue.shade300),
                padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              child: const Text(
                "Total",
                style: TextStyle(fontSize: 19),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
