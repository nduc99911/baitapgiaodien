import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'MyOrder3.dart';

class MyOrder1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      builder: () => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: buildAppBar(),
          body: TabBarView(
            children: [
              Container(
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return buildItem();
                      })),
              Container(
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return buildItem();
                      })),
            ],
          ),
        ),
      ),
      designSize: Size(411, 731),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        'My order',
        style: TextStyle(color: Colors.black, fontSize: 20.sp),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          )),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 30.w),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10.w),
                child: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey,
              ),
            ],
          ),
        )
      ],
      bottom: TabBar(
        indicatorColor: Colors.brown,
        labelColor: Colors.brown,
        tabs: [
          Tab(
            text: "Pending orders",
          ),
          Tab(
            text: "Pastorders",
          ),
        ],
      ),
    );
  }

  GestureDetector buildItem() {
    return GestureDetector(
        onTap: () {
          Get.to(MyOrder3());
        },
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 400.w,
                  height: 230.h,
                  color: Colors.white,
                ),
                Positioned(
                    top: 40.h,
                    left: 50.w,
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 10,
                            spreadRadius: 1,
                            offset: Offset(2, 5))
                      ]),
                      width: 320.w,
                      height: 170.h,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Container(
                              margin: EdgeInsets.only(top: 20.h, left: 30.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Order #456789',
                                    style: TextStyle(
                                        color: Colors.brown, fontSize: 13.sp),
                                  ),
                                  Text(
                                    '2020/06/10-09:30',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11.sp),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Woment\'s hoodie',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border:
                                            Border.all(color: Colors.brown)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.navigate_next,
                                          color: Colors.brown,
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Divider(),
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              margin: EdgeInsets.only(left: 50.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Cash on delivery',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 17.sp),
                                  ),
                                  Text(
                                    '\$123',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                Positioned(
                    top: 5.h,
                    left: 0.w,
                    child: Container(
                      width: 130.w,
                      height: 150.h,
                      child: Image.asset('assets/images/quanao3.png'),
                    ))
              ],
            )
          ],
        ));
  }
}
