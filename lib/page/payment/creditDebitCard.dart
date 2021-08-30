import 'package:btgiaodien/page/payment/creaditDebitCartControlle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class CreditDebitCardPage extends StatelessWidget {
  CreateDebitCartControler controler = Get.put(CreateDebitCartControler());
  final TextEditingController controller1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      builder: () => Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
              )),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'Credit/Debit card',
            style: TextStyle(
                color: Colors.black,
                fontSize: 19.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Card number',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp),
                ),
                SizedBox(
                  height: 10,
                ),
                buildTextFieldCard(),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Expiry date",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp),
                ),
                SizedBox(
                  height: 15,
                ),
                buildExpirydate(context),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Name on card",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Enter name on card'),
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    child: Text(
                      'Save card',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    color: Colors.brown,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'We accept',
                  style: TextStyle(color: Colors.grey, fontSize: 13.sp),
                ),
                Row(
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
                        'http://aux2.iconspalace.com/uploads/paypal-payment-icon-256.png',
                        width: 50.w,
                        height: 30.h,
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(right: 10.w),
                      child: Image.network(
                        'https://icons.iconarchive.com/icons/designbolts/credit-card-payment/256/Master-Card-Blue-icon.png',
                        width: 50.w,
                        height: 30.h,
                      ),
                    ),
                    Card(
                      child: Image.network(
                        'https://icons.iconarchive.com/icons/designbolts/credit-card-payment/256/Master-Card-Blue-icon.png',
                        width: 50.w,
                        height: 30.h,
                      ),
                    ),
                    Card(
                      child: Image.network(
                        'http://aux2.iconspalace.com/uploads/paypal-payment-icon-256.png',
                        width: 50.w,
                        height: 30.h,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      designSize: Size(411, 731),
    );
  }

  TextField buildExpirydate(BuildContext context) {
    return TextField(
      controller: controller1,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.5),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              ShowDialog(context);
            },
            icon: Icon(
              Icons.arrow_drop_down_circle_outlined,
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(),
          hintText: 'MM/YY'),
    );
  }

  Future<dynamic> ShowDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              actions: [
                Container(
                  decoration: BoxDecoration(),
                  child: SizedBox(
                    width: 140.w,
                    height: 40.h,
                    child: FlatButton(
                        highlightColor: Colors.brown,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.brown,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                        color: Colors.white,
                        onPressed: () {},
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.brown),
                        )),
                  ),
                ),
                SizedBox(
                  width: 140.w,
                  height: 40.h,
                  child: FlatButton(
                      highlightColor: Colors.brown,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      color: Colors.brown,
                      onPressed: () {},
                      child: Text(
                        'Ok',
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
              content: BuilDate(),
            ));
  }

  TextField buildTextFieldCard() {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.5),
          ),
          suffixIcon: Icon(
            Icons.camera_alt_outlined,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(),
          hintText: 'Enter Card Number'),
    );
  }

  ScrollDatePicker BuilDate() {
    return ScrollDatePicker(
        config: DatePickerConfig(
            isLoop: true,
            selectedTextStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 17.0)),
        controller: controler.datepicker,
        locale: DatePickerLocale.en_us,
        pickerDecoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent, width: 2.0)),
        onChanged: (value) {
          controller1.value = TextEditingValue(
            text: "${controler.selectedDate.value}",
            selection: TextSelection.fromPosition(
              TextPosition(offset: "${controler.selectedDate.value}".length),
            ),
          );
          controler.selectedDate.value = value;
        });
  }
}
