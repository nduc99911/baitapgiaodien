import 'package:btgiaodien/page/acount/Acountpage.dart';
import 'package:btgiaodien/page/dashboard/dashboardcontroller.dart';
import 'package:btgiaodien/page/heart/heartpage.dart';
import 'package:btgiaodien/page/home/homecontroller.dart';
import 'package:btgiaodien/page/home/homepage.dart';
import 'package:btgiaodien/page/search/searchpage.dart';
import 'package:btgiaodien/page/shop/shopcontroller.dart';
import 'package:btgiaodien/page/shop/shoppage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardPage extends StatelessWidget {
  DashboardController controller = Get.put(DashboardController());
  HomeController controller1 = Get.put(HomeController());
  ShopController controller2 = Get.put(ShopController());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
              child: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomePage(),
              SearchPage(),
              ShopPage(),
              HeartPage(),
              AcountPage(),
            ],
          )),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.brown,
            onTap: (value) {
              controller.changeTabIndex(value);
            },
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBar(icon: CupertinoIcons.home, lable: "Home"),
              _bottomNavigationBar(
                  icon: CupertinoIcons.search, lable: "Search"),
              _bottomNavigationBar(
                  icon: CupertinoIcons.shopping_cart, lable: "Shop"),
              _bottomNavigationBar(icon: CupertinoIcons.heart, lable: "Like"),
              _bottomNavigationBar(
                  icon: CupertinoIcons.person, lable: "Acount"),
            ],
          ),
        );
      },
    );
  }
}

_bottomNavigationBar({required IconData icon, required String lable}) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: lable,
  );
}
