import 'package:btgiaodien/page/acount/AcountController.dart';
import 'package:btgiaodien/page/heart/heartcontroller.dart';
import 'package:btgiaodien/page/home/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HeartPage extends GetView<HeartController> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                'Save Items',
                style: TextStyle(color: Colors.black),
              ),
              elevation: 0,
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey,
                  )),
              actions: [
                Container(
                  margin: EdgeInsets.only(right: 15.w),
                  child: IconButton(
                      onPressed: () {},
                      icon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_cart_outlined,
                              color: Colors.black))),
                )
              ],
              bottom: TabBar(
                indicatorColor: Colors.brown,
                labelColor: Colors.brown,
                tabs: [
                  Tab(
                    text: "All iteams",
                  ),
                  Tab(
                    text: "Boards",
                  ),
                ],
              ),
            ),
            body: TabBarView(children: [
              ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return buildItem();
                },
              ),
              //tab2
              ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return buildItem();
                },
              ),
            ]),
          )),
      designSize: Size(411, 731),
    );
  }

  Container buildItem() {
    return Container(
      child: Stack(
        children: [
          Container(
            color: Colors.white,
            width: 415.w,
            height: 200.h,
          ),
          Positioned(
            top: 40.h,
            right: 20.w,
            child: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(3, 1), //
                )
              ]),
              width: 300.w,
              height: 130.h,
              child: Container(
                margin: EdgeInsets.only(left: 50.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Handbag lV',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10.w),
                          child: Text(
                            'Color:',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.sp),
                          ),
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.brown,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$225',
                          style: TextStyle(
                              fontSize: 23.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 20.w),
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.grey,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 10.h,
            left: 20.w,
            child: Container(
              width: 120.w,
              height: 120.h,
              child: Image.asset('assets/images/quanao.png'),
            ),
          )
        ],
      ),
    );
  }
}
