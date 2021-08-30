import 'dart:ui';

import 'package:btgiaodien/page/payment/addgiftcardcontoller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

import 'creditDebitCard.dart';

class AddGiftCard extends StatelessWidget {
  final addgitcardController controller = Get.put(addgitcardController());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      builder: () => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
          centerTitle: true,
          title: Text(
            'Add gift cards',
            style: TextStyle(
                fontSize: 19.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter the long number and scrach off the pannel on your card to revaal your pin as show below',
                style: TextStyle(color: Colors.grey, fontSize: 13.sp),
              ),
              Container(
                  margin: EdgeInsets.only(left: 18.w),
                  width: 300.w,
                  height: 230.h,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                        child: Column(
                      children: [
                        Text(
                          'Back of Gift Card',
                          style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                        ),
                        Obx(
                          () => Text(
                            controller.DigitCode.value,
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 100.h,
                            child: Obx(
                              () => SfBarcodeGenerator(
                                  value: controller.DigitCode.value),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 20.h,
                          width: 265.w,
                          color: Color(0xfff3f3f3),
                        )
                      ],
                    )),
                  )),

              Text(
                '16-Digit Code',
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 45.h,
                child: TextField(
                  onChanged: (value) {
                    controller.DigitCode.value = value;
                    print(controller.DigitPin);
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter 16-Digit Code'),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                '4-Digit Pin',
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 45.h,
                child: TextField(
                  onChanged: (value) {
                    controller.DigitCode.value = value;
                    print(controller.DigitCode);
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter 4 Digit-Pin'),
                ),
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: FlatButton(
                  onPressed: () {
                    Get.to(CreditDebitCardPage());
                  },
                  child: Text(
                    'Get Started!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  color: Colors.brown,
                ),
              ),
              // SfBarcodeGenerator(
              //   value: '123456789',
              //   showValue: true,
              // ),
            ],
          ),
        ),
      ),
      designSize: Size(411, 731),
    );
  }
}
