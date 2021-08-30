import 'package:btgiaodien/page/acount/AcountController.dart';
import 'package:btgiaodien/page/dashboard/dashboardcontroller.dart';
import 'package:btgiaodien/page/heart/heartcontroller.dart';
import 'package:btgiaodien/page/home/homecontroller.dart';
import 'package:btgiaodien/page/shop/shopcontroller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AcountController>(() => AcountController());
    Get.lazyPut<ShopController>(() => ShopController());
    Get.lazyPut<HeartController>(() => HeartController());
  }
}
