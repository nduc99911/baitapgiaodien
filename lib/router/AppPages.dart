import 'package:btgiaodien/page/dashboard/dashbroadbinding.dart';
import 'package:btgiaodien/page/dashboard/dashpage.dart';
import 'package:btgiaodien/page/splash.dart';
import 'package:get/get.dart';

import 'AppRoutes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => DashBoardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
