import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';
import 'package:switcher_button/switcher_button.dart';

class NotifaCation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0,
            title: Text(
              'Notifications',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            leading: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    )
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sales and promotions',
                          style: TextStyle(fontSize: 20),
                        ),
                        SwitcherButton(
                          value: true,
                          onColor: Colors.green,
                          offColor: Colors.grey,
                          onChange: (value) {
                            value == true
                                ? Get.snackbar('Notifiacations',
                                    'You Turn On Notifiacations')
                                : Get.snackbar('Notifiacations',
                                    'You Turn Off Notifiacations');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You can changes your communication preferences,Including',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'email and SMS,from My acount',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
