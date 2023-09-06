import 'package:get/get.dart';

class DisplayController extends GetxController {
  RxString fruit = 'Apple'.obs;

  void updateData() {
    fruit.value = 'Cherry';
  }
}
