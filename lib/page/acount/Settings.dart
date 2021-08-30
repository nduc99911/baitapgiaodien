import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingDartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      builder: () => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Setting',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            margin: EdgeInsets.only(left: 18.w),
            width: 300.w,
            height: 450.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(3, 1),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.public_outlined,
                              color: Colors.brown,
                            ),
                            Text(
                              'Shop In',
                              style: TextStyle(fontSize: 17.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'United States',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: Colors.brown,
                            ),
                            Text(
                              'Currency',
                              style: TextStyle(fontSize: 17.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'USD',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.straighten,
                              color: Colors.brown,
                            ),
                            Text(
                              'Size',
                              style: TextStyle(fontSize: 17.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'US',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.circle_notifications,
                              color: Colors.brown,
                            ),
                            Text(
                              'Notifications',
                              style: TextStyle(fontSize: 17.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.navigate_next,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.qr_code_2,
                              color: Colors.brown,
                            ),
                            Text(
                              'Face ID',
                              style: TextStyle(fontSize: 17.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.navigate_next,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.shopping_basket_outlined,
                              color: Colors.brown,
                            ),
                            Text(
                              'Shop',
                              style: TextStyle(fontSize: 17.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Men',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.navigate_next, color: Colors.grey)
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.g_mobiledata,
                              color: Colors.brown,
                            ),
                            Text(
                              'Shop In',
                              style: TextStyle(fontSize: 17.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'United States',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.smartphone,
                              color: Colors.brown,
                            ),
                            Text(
                              'Shop In',
                              style: TextStyle(fontSize: 17.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.navigate_next,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
