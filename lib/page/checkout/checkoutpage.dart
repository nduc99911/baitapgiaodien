import 'package:btgiaodien/page/checkout/checkoutpage2.dart';
import 'package:btgiaodien/page/choosecountry/chooseecountry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CheckOutPage extends StatelessWidget {
  // CheckOutController checkoucontroller = Get.put(CheckOutController());
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
          children: <Widget>[
            // Container(
            //   width: double.infinity,
            //   height: 100.h,
            //   color: Colors.white,
            //   child: Row(
            //     children: [
            //       Timeline()
            //       ],
            //   ),
            // ),
            Container(
                margin: EdgeInsets.only(left: 30.w),
                width: double.infinity,
                height: 100.h,
                child: buildTimeLine()),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      buildeliveryto(),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 300.w),
                        child: Text(
                          'My Cart',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.sp),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      buildItemCheckOut(),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset:
                                  Offset(3, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Promo/Student code or e-gitf card',
                              style: TextStyle(
                                  fontSize: 15.sp, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 100.h),
                        padding: EdgeInsets.all(10),
                        child: SizedBox(
                          width: double.infinity,
                          height: 40.h,
                          child: FlatButton(
                            onPressed: () {
                              Get.to(CheckOutPage2());
                            },
                            child: Text(
                              'Shipping',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            color: Colors.brown,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      designSize: Size(411, 731),
    );
  }

  Row buildTimeLine() {
    return Row(
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
            endChild: Text(
              'Shipping',
              style: TextStyle(color: Colors.grey),
            ),
            axis: TimelineAxis.horizontal,
            indicatorStyle: IndicatorStyle(
              width: 50,
              height: 30,
              color: Colors.grey,
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
    );
  }

  Container buildeliveryto() {
    return Container(
      margin: EdgeInsets.all(15),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30.w),
            child: Text(
              'Delviver to:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Row(
            children: [
              Image.network(
                  'https://img.flaticon.com/icons/png/512/206/206626.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF',
                  width: 60.w,
                  height: 60.h),
              Text('United States'),
            ],
          ),
          // margin: EdgeInsets.only(left: 30.w),

          Container(
              margin: EdgeInsets.only(right: 10.w),
              child: IconButton(
                  onPressed: () {
                    Get.to(ChooserCountryPage());
                  },
                  icon: Icon(Icons.navigate_next)))
        ],
      ),
    );
  }
}

// Row Timeline() {
//   return Row(
//     children: [
//       SizedBox(
//         width: 120.w,
//         height: 70.h,
//         child: TimelineTile(
//           axis: TimelineAxis.horizontal,
//           afterLineStyle: LineStyle(color: Colors.brown),
//           indicatorStyle: IndicatorStyle(
//               width: 40.w,
//               height: 40.h,
//               color: Colors.white,
//               iconStyle: IconStyle(
//                   iconData: Icons.do_not_disturb_on_outlined,
//                   color: Colors.brown)),
//           isFirst: true,
//           endChild: Text('Information'),
//         ),
//       ),
//       SizedBox(
//         width: 150.w,
//         height: 70.h,
//         child: TimelineTile(
//           axis: TimelineAxis.horizontal,
//           indicatorStyle: IndicatorStyle(
//               width: 40.w,
//               height: 40.h,
//               color: Colors.white,
//               iconStyle: IconStyle(iconData: Icons.money_rounded)),
//           isFirst: false,
//           endChild: Text('Text Child'),
//         ),
//       ),
//       SizedBox(
//         width: 100.w,
//         height: 70.h,
//         child: TimelineTile(
//           axis: TimelineAxis.horizontal,
//           indicatorStyle: IndicatorStyle(
//               width: 40.w,
//               height: 40.h,
//               color: Colors.white,
//               iconStyle: IconStyle(iconData: Icons.offline_pin_outlined)),
//           endChild: Text('Payment'),
//         ),
//       ),
//     ],
//   );
// }

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
                    margin: EdgeInsets.only(right: 60.w, top: 10.h),
                    child: Text(
                      'Woment hoodie',
                      style: TextStyle(color: Colors.brown, fontSize: 20.sp),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 60.w),
                      child: Row(
                        children: [
                          Text(
                            'Colors',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15.sp),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 10.w, top: 5.h, right: 10.w, bottom: 5.h),
                            height: 15.h,
                            width: 15.w,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20.w)),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20.w),
                            child: RichText(
                              text: TextSpan(
                                  text: 'Size:',
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: 'M',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black))
                                  ]),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20.w),
                            child: RichText(
                              text: TextSpan(
                                  text: 'Amount:',
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: '1',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black))
                                  ]),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 60.w, top: 30.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 20.sp),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20.w),
                            child: Text(
                              '\$123',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.sp),
                            ),
                          )
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
