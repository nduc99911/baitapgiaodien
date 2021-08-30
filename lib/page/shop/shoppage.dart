import 'package:btgiaodien/page/checkout/checkoutpage.dart';
import 'package:btgiaodien/page/shop/shopcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class ShopPage extends GetView<ShopController> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
            title: Text(
              'Cart',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
          body: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    StaggeredGridView.countBuilder(
                      physics:
                          NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                      shrinkWrap: true,
                      crossAxisCount: 1,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) =>
                          buildItemCheckOut(),
                      staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                    ),
                    Container(
                      width: 400.w,
                      height: 150.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(3, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 10.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp),
                                ),
                                Text(
                                  '\$123',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown,
                                      fontSize: 20.sp),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40.h),
                            padding: EdgeInsets.all(10),
                            child: SizedBox(
                              width: double.infinity,
                              height: 40.h,
                              child: FlatButton(
                                onPressed: () {
                                  Get.to(CheckOutPage());
                                },
                                child: Text(
                                  'Get Started!',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                color: Colors.brown,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
      designSize: Size(411, 731),
    );
  }

  Container buildItemCheckOut({String? title, String? price, String? images}) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 200.h,
            width: 400.w,
            color: Colors.white,
          ),
          Positioned(
            left: 70.w,
            top: 25.h,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(3, 1), // changes position of shadow
                  ),
                ],
              ),
              height: 150.h,
              width: 320.w,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 90.w, top: 10.h),
                      child: Text(
                        'Woment hoodie',
                        style: TextStyle(color: Colors.brown, fontSize: 20.sp),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 55.w),
                        child: Row(
                          children: [
                            Text(
                              'Colors',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.sp),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.red,
                              ),
                            ),
                            Text(
                              'Size     M',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.sp),
                            ),
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(left: 60.w, top: 30.h),
                        child: Row(
                          children: [
                            Text(
                              '\$123',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.sp),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 80.w),
                                width: 120.w,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          controller.valuechange2();
                                        },
                                        icon: Icon(
                                            Icons.do_not_disturb_on_outlined)),
                                    Obx(
                                      () => Text(
                                        "${controller.count}",
                                        style: TextStyle(),
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          controller.valuechange();
                                        },
                                        icon: Icon(Icons.control_point)),
                                  ],
                                ))
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              left: 20.w,
              top: 5.h,
              child: Container(
                height: 120.h,
                width: 100.w,
                child: Image.asset('assets/images/ment2.png'),
              ))
        ],
      ),
    );
  }

//   Row Timeline() {
//     return Row(
//       children: [
//         SizedBox(
//           width: 100,
//           height: 50,
//           child: TimelineTile(
//             axis: TimelineAxis.horizontal,
//             endChild: Text('First'),
//             isFirst: true,
//           ),
//         ),
//         SizedBox(
//           width: 100,
//           height: 50,
//           child: TimelineTile(
//             axis: TimelineAxis.horizontal,
//             endChild: Text('Two'),
//             beforeLineStyle: LineStyle(color: Colors.red),
//             afterLineStyle: LineStyle(color: Colors.red),
//             isFirst: false,
//           ),
//         ),
//         SizedBox(
//           width: 100,
//           height: 50,
//           child: TimelineTile(
//             axis: TimelineAxis.horizontal,
//             endChild: Text('Three'),
//             isFirst: false,
//           ),
//         ),
//       ],
//     );
//   }
// }
}
