import 'package:btgiaodien/page/payment/addgitftcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Addpayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      builder: () => Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Add Payment',
            style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
              )),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/payment.jpg'),
                Text(
                  'You need a billing address',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Center(
                  child: Text(
                    '''    You curently have no saved address.
  Without, you wont able to add a new 
                payment method
                    ''',
                    style: TextStyle(color: Colors.grey, fontSize: 13.sp),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      height: 50.h,
                      width: double.infinity,
                      child: FlatButton(
                          color: Colors.brown,
                          onPressed: () {
                            Get.to(AddGiftCard());
                          },
                          child: Text(
                            'Add new address',
                            style:
                                TextStyle(fontSize: 18.sp, color: Colors.white),
                          ))),
                )
              ],
            ),
          ),
        ),
      ),
      designSize: Size(411, 731),
    );
  }
}
