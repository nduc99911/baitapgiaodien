import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      builder: () => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
              )),
          title: Text(
            'My order',
            style: TextStyle(color: Colors.black, fontSize: 20.sp),
          ),
        ),
        body: Center(
            child: Column(
          children: [
            Image.asset('assets/images/cartshop.jpg'),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: double.infinity,
                  height: 60.h,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                        color: Colors.brown,
                        onPressed: () {},
                        child: Text(
                          'Start shopping',
                          style: TextStyle(color: Colors.white),
                        )),
                  )),
            )
          ],
        )),
      ),
      designSize: Size(411, 731),
    );
  }
}
