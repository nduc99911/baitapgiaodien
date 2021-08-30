import 'package:btgiaodien/page/MyOrder/MyOrder1.dart';
import 'package:btgiaodien/page/acount/AcountController.dart';
import 'package:btgiaodien/page/acount/Settings.dart';
import 'package:btgiaodien/page/home/homecontroller.dart';
import 'package:btgiaodien/page/payment/addpayment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AcountPage extends GetView<AcountController> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
          body: Stack(
        children: [
          SizedBox(
              child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                delegate: CustomSliverAppBarDelegate(expandedHeight: 250),
                pinned: true,
              ),
              SliverFillRemaining(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                blurRadius: 10,
                                spreadRadius: 2,
                              )
                            ]),
                        margin:
                            EdgeInsets.only(top: 130.h, right: 9.w, left: 9.w),
                        child: Column(
                          children: [
                            BuildItem(
                                icon: Icons.receipt_long, titile: 'My details'),
                            BuildItem(
                                icon: Icons.location_on_outlined,
                                titile: 'Address book'),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 20.w),
                                        child: Icon(
                                          Icons.payment,
                                          color: Colors.brown,
                                        ),
                                      ),
                                      Text(
                                        'Payment methos',
                                        style: TextStyle(fontSize: 20.sp),
                                      )
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Get.to(Addpayment());
                                    },
                                    icon: Icon(
                                      Icons.navigate_next,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            BuildItem(
                                icon: Icons.connect_without_contact,
                                titile: 'Contact preferences'),
                            BuildItem(
                                icon: Icons.person_off_outlined,
                                titile: 'Social accounts'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        margin: EdgeInsets.only(right: 9.w, left: 9.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                blurRadius: 10,
                                spreadRadius: 2,
                              )
                            ]),
                        child: BuildItem(
                            icon: Icons.receipt_long, titile: 'My details'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                          margin: EdgeInsets.only(right: 9.w, left: 9.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.8),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Column(
                            children: [
                              BuildItem(
                                  icon: Icons.receipt_long,
                                  titile: 'My details'),
                              BuildItem(
                                  icon: Icons.security_update_warning_outlined,
                                  titile: 'Need help?'),
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        margin: EdgeInsets.only(right: 9.w, left: 9.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                blurRadius: 10,
                                spreadRadius: 2,
                              )
                            ]),
                        child: BuildItem(
                            icon: Icons.exit_to_app, titile: 'Sign Out'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
        ],
      )),
      designSize: Size(411, 731),
    );
  }

  Padding BuildItem({IconData? icon, String? titile}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20.w),
                child: Icon(
                  icon,
                  color: Colors.brown,
                ),
              ),
              Text(
                titile!,
                style: TextStyle(fontSize: 20.sp),
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.navigate_next,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }

  // Positioned item2() {
  //   return Positioned(
  //     top: 440.h,
  //     left: 29.w,
  //     child: Container(
  //         width: 350.w,
  //         height: 280.h,
  //         decoration: BoxDecoration(color: Colors.white, boxShadow: [
  //           BoxShadow(
  //             color: Colors.grey.withOpacity(0.5),
  //             blurRadius: 5,
  //             spreadRadius: 3,
  //           )
  //         ]),
  //         child: Padding(
  //           padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
  //           child: Column(
  //             children: [
  //               buildItemChild(
  //                   title: 'My details', icon: Icons.developer_board_outlined),
  //               Divider(),
  //               buildItemChild(
  //                   title: 'Address book', icon: Icons.location_on_outlined),
  //               Divider(),
  //               buildItemChild(title: 'Payment methods', icon: Icons.payment),
  //               Divider(),
  //               buildItemChild(
  //                   title: 'Contact prefenrences',
  //                   icon: Icons.connect_without_contact),
  //               Divider(),
  //               buildItemChild(title: 'Social accounts', icon: Icons.person),
  //               Divider(),
  //             ],
  //           ),
  //         )),
  //   );
  // }

  Positioned item1() => Positioned(top: 280.h, child: buildItem());

  Container buildItem() {
    return Container(
      margin: EdgeInsets.only(left: 30.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              blurRadius: 10,
              spreadRadius: 2,
            )
          ]),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      height: 135.h,
      width: 350.w,
      child: Column(
        children: [
          buildItemChild(title: 'My order', icon: Icons.ac_unit),
          Divider(),
          buildItemChild(
              title: 'Premier Delivery', icon: Icons.all_inbox_outlined),
          Divider(),
        ],
      ),
    );
  }

  Padding buildItemChild({String? title, IconData? icon}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20.w),
                child: Icon(
                  icon,
                  color: Colors.brown,
                ),
              ),
              Text(title!)
            ],
          ),
          Icon(
            Icons.navigate_next,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  Expanded sliverAppBar() {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          buildSliverAppBar(),
        ],
      ),
    );
  }

  SliverAppBar buildSliverAppBar() {
    return SliverAppBar(
      actions: [
        Container(
          margin: EdgeInsets.only(right: 20.w),
          child: Icon(Icons.settings),
        )
      ],
      pinned: false,
      snap: true,
      floating: true,
      expandedHeight: 340.0.h,
      flexibleSpace: FlexibleSpaceBar(
          background: Stack(
        children: [
          Opacity(
            opacity: 0.6,
            child: Image.network(
              'https://cafebiz.cafebizcdn.vn/162123310254002176/2020/9/24/photo-15-16009182768431051409580.png',
              width: double.infinity,
              height: 350.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 150.h,
            left: 160.w,
            child: CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xffFDCF09),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    "https://znews-photo.zadn.vn/w660/Uploaded/rohunwa/2020_08_21/LOUIS_VUITTOn.jpg",
                  ),
                )),
          ),
          Positioned(
              top: 210.h,
              left: 210.w,
              child: Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Icon(Icons.border_color_outlined),
              )),
          Positioned(
              top: 250.h,
              left: 160.w,
              child: Container(
                child: Text(
                  'Jessi Pham',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp),
                ),
              )),
        ],
      )),
    );
  }
}

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  const CustomSliverAppBarDelegate({
    required this.expandedHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final size = 60;
    final top = expandedHeight - shrinkOffset - size / 2;

    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        buildBackground(shrinkOffset),
        buildAppBar(shrinkOffset),
        Positioned(
          top: top,
          left: 20,
          right: 20,
          child: buildFloating(shrinkOffset),
        ),
      ],
    );
  }

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;

  Widget buildAppBar(double shrinkOffset) => Opacity(
        opacity: appear(shrinkOffset),
        child: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
              )),
          title: Text(
            'Acount',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10.w),
              child: IconButton(
                  onPressed: () {
                    Get.to(SettingDartPage());
                  },
                  icon: Icon(
                    Icons.settings,
                    color: Colors.black,
                  )),
            )
          ],
        ),
      );

  Widget buildBackground(double shrinkOffset) => Opacity(
      opacity: disappear(shrinkOffset),
      child: Container(
        child: Stack(
          children: [
            Image.network(
              'https://source.unsplash.com/random?mono+dark',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            //avatar
            Positioned(
              top: 80.h,
              left: 160.w,
              child: CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage(
                  "https://znews-photo.zadn.vn/w660/Uploaded/rohunwa/2020_08_21/LOUIS_VUITTOn.jpg",
                ),
              ),
            ),
            //title
            Positioned(
                top: 190.h,
                left: 160.w,
                child: Container(
                  child: Text(
                    'Jessi Pham',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp),
                  ),
                )),
            //icon
            Positioned(
                top: 150.h,
                left: 220.w,
                child: Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Icon(Icons.border_color_outlined),
                )),
            //iconSetting
            Positioned(
                top: 20.h,
                right: 18.w,
                child: IconButton(
                    onPressed: () {
                      Get.to(SettingDartPage());
                    },
                    icon: Icon(
                      Icons.settings,
                      color: Colors.white,
                    )))
          ],
        ),
      ));

  Widget buildFloating(double shrinkOffset) => Opacity(
      opacity: disappear(shrinkOffset),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                blurRadius: 10,
                spreadRadius: 2,
              )
            ]),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.h),
        height: 150.h,
        width: 350.w,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 3.h),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 20.w),
                            child: Icon(
                              Icons.gite_outlined,
                              color: Colors.brown,
                            ),
                          ),
                          Text(
                            'My orders',
                            style: TextStyle(fontSize: 20.sp),
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          Get.to(MyOrder1());
                        },
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                )),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 3.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20.w),
                        child: Icon(
                          Icons.gite_outlined,
                          color: Colors.brown,
                        ),
                      ),
                      Text(
                        'Premier Delivery',
                        style: TextStyle(fontSize: 20.sp),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.navigate_next,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ));

  Widget buildButton({
    required String text,
    required IconData icon,
  }) =>
      TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(width: 12),
            Text(text, style: TextStyle(fontSize: 20)),
          ],
        ),
        onPressed: () {},
      );

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 30;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
