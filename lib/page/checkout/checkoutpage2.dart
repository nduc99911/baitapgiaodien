import 'package:btgiaodien/page/checkout/checkout3.dart';
import 'package:btgiaodien/page/checkout/checoutcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:dotted_border/dotted_border.dart';

enum SingingCharacter { lafayette, jefferson }

class CheckOutPage2 extends StatelessWidget {
  SingingCharacter? _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      builder: () => Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Cart',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
              )),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30.w),
              width: double.infinity,
              height: 100.h,
              child: Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 120.w,
                        child: TimelineTile(
                          endChild: Text(
                            'Information',
                            style: TextStyle(color: Colors.brown),
                          ),
                          afterLineStyle: LineStyle(color: Colors.brown),
                          isFirst: true,
                          axis: TimelineAxis.horizontal,
                          indicatorStyle: IndicatorStyle(
                            width: 50,
                            height: 30,
                            color: Colors.brown,
                            padding: const EdgeInsets.all(8),
                            iconStyle: IconStyle(
                              color: Colors.white,
                              iconData: Icons.do_not_disturb_on_outlined,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120.w,
                        child: TimelineTile(
                          beforeLineStyle: LineStyle(color: Colors.brown),
                          endChild: Text(
                            'Shipping',
                            style: TextStyle(color: Colors.brown),
                          ),
                          axis: TimelineAxis.horizontal,
                          indicatorStyle: IndicatorStyle(
                            width: 50,
                            height: 30,
                            color: Colors.brown,
                            padding: const EdgeInsets.all(8),
                            iconStyle: IconStyle(
                              color: Colors.white,
                              iconData: Icons.money_rounded,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120.w,
                        child: TimelineTile(
                          endChild: Text(
                            'Information',
                            style: TextStyle(color: Colors.grey),
                          ),
                          isLast: true,
                          axis: TimelineAxis.horizontal,
                          indicatorStyle: IndicatorStyle(
                            width: 50,
                            height: 30,
                            color: Colors.grey,
                            padding: const EdgeInsets.all(8),
                            iconStyle: IconStyle(
                              color: Colors.white,
                              iconData: Icons.offline_pin_outlined,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 180.w),
                      child: Text(
                        'Shipping address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.sp),
                      ),
                    ),
                    buildPastalAddress(),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 180.w),
                      child: Text(
                        'Shipping options',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 50.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.9),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(3, 1),
                              )
                            ]),
                        child: Column(
                          children: [
                            buildItemShippingoptions(
                                title1: 'Free Standard Shipping',
                                title2:
                                    'Delivered on or before Monday June 8 2020',
                                title3: 'No shipping on Public Holidays'),
                            Divider(),
                            buildItemShippingoptions(
                                title1: '\$10.00 Express Shipping',
                                title2:
                                    'Deliverd on befora Wednesday June 3 2020',
                                title3: 'No shipping on Public Holidays'),
                            Divider(),
                            buildItemShippingoptions(
                                title1: '\$19.99 Express Shipping',
                                title2:
                                    'Deliverd on befora Wednesday June 3 2020',
                                title3: 'No shipping on Public Holidays'),
                            Divider(),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        height: 40.h,
                        width: double.infinity,
                        child: FlatButton(
                            color: Colors.brown,
                            onPressed: () {
                              Get.to(CheckOutPage3());
                            },
                            child: Text(
                              'Payment',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
      designSize: Size(411, 731),
    );
  }

  Row buildItemShippingoptions(
      {String? title1, String? title2, String? title3}) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10.w),
          child: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: null,
          ),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.h, right: 80.w),
              child: Text(
                title1!,
                style: TextStyle(fontSize: 18.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w),
              child: Text(
                title2!,
                style: TextStyle(fontSize: 15.sp, color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 60.w),
              child: Text(
                title3!,
                style: TextStyle(fontSize: 15.sp, color: Colors.grey),
              ),
            )
          ],
        )
      ],
    );
  }

  Column buildPastalAddress() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            margin: EdgeInsets.only(top: 15.h),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(3, 1),
                  )
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Postal address',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 19.sp),
                      ),
                      Icon(
                        Icons.border_color_outlined,
                        color: Colors.brown,
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.only(left: 10.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_outline,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.w),
                        child: Text(
                          'Jessi Pham',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.w),
                        child: Text(
                          'Los Angeles,Canifonia USA',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone_android,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.w),
                        child: Text(
                          '0123 456 789',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: DottedBorder(
                    dashPattern: [10, 5],
                    color: Colors.grey,
                    child: Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Click & collect',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 20.sp),
                            textAlign: TextAlign.center),
                      ),
                    ),
                    strokeWidth: 2,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Row Timeline() {
  return Row(
    children: [
      SizedBox(
        width: 120.w,
        height: 70.h,
        child: TimelineTile(
          axis: TimelineAxis.horizontal,
          afterLineStyle: LineStyle(color: Colors.brown),
          indicatorStyle: IndicatorStyle(
              width: 40.w,
              height: 40.h,
              color: Colors.white,
              iconStyle: IconStyle(
                  iconData: Icons.do_not_disturb_on_outlined,
                  color: Colors.brown)),
          isFirst: true,
          endChild: Text(
            'Information',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      SizedBox(
        width: 150.w,
        height: 70.h,
        child: TimelineTile(
          beforeLineStyle: LineStyle(color: Colors.brown),
          axis: TimelineAxis.horizontal,
          indicatorStyle: IndicatorStyle(
              width: 40.w,
              height: 40.h,
              color: Colors.white,
              iconStyle: IconStyle(
                  iconData: Icons.money_rounded, color: Colors.brown)),
          isFirst: false,
          endChild: Text(
            'Text Child',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown),
          ),
        ),
      ),
      SizedBox(
        width: 100.w,
        height: 70.h,
        child: TimelineTile(
          axis: TimelineAxis.horizontal,
          indicatorStyle: IndicatorStyle(
              width: 40.w,
              height: 40.h,
              color: Colors.white,
              iconStyle: IconStyle(iconData: Icons.offline_pin_outlined)),
          endChild: Text('Payment'),
        ),
      ),
    ],
  );
}
