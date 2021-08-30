import 'package:btgiaodien/page/Filer/filterpage.dart';
import 'package:btgiaodien/page/MyOrder/MyOrder1.dart';
import 'package:btgiaodien/page/MyOrder/MyOrder3.dart';
import 'package:btgiaodien/page/acount/NotifiCation.dart';
import 'package:btgiaodien/page/checkout/checkout3.dart';
import 'package:btgiaodien/page/checkout/checkoutpage.dart';
import 'package:btgiaodien/page/checkout/checkoutpage2.dart';
import 'package:btgiaodien/page/choosecountry/chooseecountry.dart';
import 'package:btgiaodien/page/dashboard/dashpage.dart';
import 'package:btgiaodien/page/detailproduct/detaiproductPage.dart';
import 'package:btgiaodien/page/new_trend.dart';
import 'package:btgiaodien/page/page_hello.dart';
import 'package:btgiaodien/page/payment/addgitftcard.dart';
import 'package:btgiaodien/page/payment/addpayment.dart';
import 'package:btgiaodien/page/payment/creditDebitCard.dart';
import 'package:btgiaodien/page/signup.dart';
import 'package:btgiaodien/page/splash.dart';
import 'package:btgiaodien/router/AppPages.dart';
import 'package:btgiaodien/router/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    //   initialRoute: AppRoutes.DASHBOARD,
    //   getPages: AppPages.list,
    //   debugShowCheckedModeBanner: false,
    //   themeMode: ThemeMode.system,
    // );
    return MaterialApp(
      home: Body(),
    );
  }
}
