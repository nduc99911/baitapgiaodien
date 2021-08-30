import 'package:btgiaodien/page/MyOrder/MyOrder1.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CheckOutPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      builder: () => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Checkout',
            style: TextStyle(color: Colors.black, fontSize: 20.sp),
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
                          beforeLineStyle: LineStyle(color: Colors.brown),
                          endChild: Text(
                            'Information',
                            style: TextStyle(color: Colors.brown),
                          ),
                          isLast: true,
                          axis: TimelineAxis.horizontal,
                          indicatorStyle: IndicatorStyle(
                            width: 50,
                            height: 30,
                            color: Colors.brown,
                            padding: const EdgeInsets.all(8),
                            iconStyle: IconStyle(
                              color: Colors.white,
                              iconData: Icons.offline_pin_outlined,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15.w),
                    child: Text(
                      'Payment',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.sp),
                    ),
                  ),
                  buildBillingAdress(),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.w),
                    child: Text(
                      'Payment type',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  buildPaymentType(),
                  Container(
                    margin: EdgeInsets.only(left: 20.w),
                    child: Text(
                      'We accept',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  buildWeAccept(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 10,
                                spreadRadius: 3,
                                offset: Offset(1, 1))
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 32, left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Sub-total',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14.sp),
                                ),
                                Text(
                                  '\$123',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Shipping',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14.sp),
                                ),
                                Text(
                                  'Free',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Sale tax',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14.sp),
                                ),
                                Text(
                                  '\$5.70',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total to pay',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 17.sp),
                                ),
                                Text(
                                  '\$128.7',
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              margin: EdgeInsets.only(top: 50.h),
                              child: SizedBox(
                                width: double.infinity,
                                height: 45.h,
                                child: FlatButton(
                                  onPressed: () {
                                    Get.to(MyOrder1());
                                  },
                                  child: Text(
                                    'Place order',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'By placing your order you agree to our ',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 14.sp),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'terms and conditions',
                                    style: TextStyle(
                                        color: Colors.brown,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold))
                              ]),
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'privacy',
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        ' and retuntns polices and consent to some of your data',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.normal))
                              ]),
                        ),
                        Text(
                          'being stored by Ebuy which my be used to make future',
                          style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                        ),
                        Text(
                          'shopping experiences better for you',
                          style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
      designSize: Size(411, 731),
    );
  }

  Container buildWeAccept() {
    return Container(
      margin: EdgeInsets.only(left: 20.w),
      child: Row(
        children: [
          Card(
            margin: EdgeInsets.only(right: 10.w),
            child: Image.network(
              'https://img.icons8.com/color/452/visa.png',
              width: 50.w,
              height: 30.h,
            ),
          ),
          Card(
            margin: EdgeInsets.only(right: 10.w),
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/PayPal_logo.svg/225px-PayPal_logo.svg.png',
              width: 50.w,
              height: 30.h,
            ),
          ),
          Card(
            margin: EdgeInsets.only(right: 10.w),
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/330px-Mastercard-logo.svg.png',
              width: 50.w,
              height: 30.h,
            ),
          ),
          Card(
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/330px-Mastercard-logo.svg.png',
              width: 50.w,
              height: 30.h,
            ),
          ),
          Card(
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/vi/f/fe/MoMo_Logo.png',
              width: 50.w,
              height: 30.h,
            ),
          )
        ],
      ),
    );
  }

  Padding buildPaymentType() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(1, 1))
            ]),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DottedBorder(
                dashPattern: [10, 5],
                color: Colors.grey,
                child: Container(
                  width: 80.w,
                  height: 80.h,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          child: Icon(
                        Icons.all_inbox,
                        size: 50,
                        color: Colors.grey,
                      ))),
                ),
                strokeWidth: 2,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: Offset(1, 1))
                ]),
                child: Image.network(
                  'https://cdn.iconscout.com/icon/free/png-512/paypal-54-675727.png',
                  width: 110,
                  height: 80,
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: Offset(1, 1))
                ]),
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/330px-Mastercard-logo.svg.png',
                  width: 110,
                  height: 80,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column buildBillingAdress() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            margin: EdgeInsets.only(top: 0.h),
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
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Billing address',
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
