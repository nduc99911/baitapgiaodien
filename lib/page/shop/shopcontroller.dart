import 'package:get/get.dart';

class ShopController extends GetxController {
  final String title = 'Home Title';
  var count = 0.obs;
  valuechange() {
    count++;
    update();
    print(count);
  }

  valuechange2() {
    count--;
    update();
    print(count);
  }
}
