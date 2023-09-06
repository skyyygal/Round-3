import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/test_demo/display_controller.dart';

class DisplayData extends StatelessWidget {
  DisplayData({super.key});

  DisplayController controller = Get.put(DisplayController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              controller.updateData();
            },
            child: Center(
              child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Obx(
                    () => Text(
                      controller.fruit.value,
                      style: TextStyle(fontSize: 24),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
