import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AdvancedSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ScreenUtilInit(
          builder: () => Column(
            children: [
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverPersistentHeader(
                      delegate: CustomSliverAppBarDelegate(expandedHeight: 300),
                      pinned: true,
                    ),
                    SliverFillRemaining(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ListView(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      )
                                    ]),
                                margin: EdgeInsets.only(top: 70.h, left: 5.w),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Description',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.sp),
                                      ),
                                      new Text(
                                        'Nike orginaaly known as Blue Ribon Sport(BRS)',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      new Text(
                                          'was founed by University of Oregon track athlete',
                                          style: TextStyle(color: Colors.grey)),
                                      new Text(
                                          'Phil Knight and his coach,Bill bowerman,on',
                                          style: TextStyle(color: Colors.grey)),
                                      new Text(
                                          'January 25,1964 [11].The company initally',
                                          style: TextStyle(color: Colors.grey)),
                                      new Text(
                                          'opeated Eugene,Oregon as a distributor for',
                                          style: TextStyle(color: Colors.grey)),
                                      new Text(
                                          'Japanese shoe make Oninsuka Tiger,making most',
                                          style: TextStyle(color: Colors.grey)),
                                      new Text(
                                          'sales at track meets out of Kinight',
                                          style: TextStyle(color: Colors.grey)),
                                      Divider(),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Text(
                                        'Free delivery & return',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.sp),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      new Text(
                                        'Nike originally known as Blue Ribbon Sport BRS',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      new Text(
                                          'was founed by University of Oregon track athlete',
                                          style: TextStyle(color: Colors.grey)),
                                      new Text(
                                          'Phil Knight and his coach,Bill bowerman,on',
                                          style: TextStyle(color: Colors.grey)),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        height: 40.h,
                                        child: FlatButton(
                                          onPressed: () {
                                            Get.bottomSheet(Container(
                                              height: 800.h,
                                              color: Colors.white,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        Container(
                                                          width: 400.w,
                                                          height: 150.h,
                                                          color: Colors.white,
                                                        ),
                                                        Positioned(
                                                            right: 10.w,
                                                            top: 50.h,
                                                            child: Container(
                                                              width: 330.w,
                                                              height: 100.h,
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      boxShadow: [
                                                                    BoxShadow(
                                                                      color: Colors
                                                                          .grey
                                                                          .withOpacity(
                                                                              0.5),
                                                                      blurRadius:
                                                                          10,
                                                                      spreadRadius:
                                                                          1,
                                                                    )
                                                                  ]),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        16.0),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets.only(
                                                                          left:
                                                                              30.w),
                                                                      child:
                                                                          Text(
                                                                        'Woment\'s hoodie',
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.black,
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 18.sp),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.only(
                                                                          left:
                                                                              30.w),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            'Warehouse : 83',
                                                                            style:
                                                                                TextStyle(color: Colors.grey, fontSize: 15.sp),
                                                                          ),
                                                                          Text(
                                                                            '\$123',
                                                                            style:
                                                                                TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            )),
                                                        Positioned(
                                                            top: 20.h,
                                                            child: Container(
                                                              width: 100.w,
                                                              height: 100.h,
                                                              child: Image.asset(
                                                                  'assets/images/quanao3.png'),
                                                            )),
                                                      ],
                                                    ),
                                                    Text(
                                                      'Color',
                                                      style: TextStyle(
                                                          fontSize: 15.sp),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 20.w),
                                                          child: CircleAvatar(
                                                            backgroundColor:
                                                                Colors.red,
                                                            radius: 20,
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 20.w),
                                                          child: CircleAvatar(
                                                            backgroundColor:
                                                                Colors.brown,
                                                            radius: 20,
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 20.w),
                                                          child: CircleAvatar(
                                                            backgroundColor:
                                                                Colors.grey,
                                                            radius: 20,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      'Size',
                                                      style: TextStyle(
                                                          fontSize: 15.sp),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 20.w),
                                                          child: CircleAvatar(
                                                            radius: 20,
                                                            backgroundColor:
                                                                Colors.grey,
                                                            child: Text(
                                                              'S',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      20.sp,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 20.w),
                                                          child: CircleAvatar(
                                                            radius: 20,
                                                            backgroundColor:
                                                                Colors.grey,
                                                            child: Text(
                                                              'M',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      20.sp,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 20.w),
                                                          child: CircleAvatar(
                                                            radius: 20,
                                                            backgroundColor:
                                                                Colors.grey,
                                                            child: Text(
                                                              'L',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      20.sp,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 20.w),
                                                          child: CircleAvatar(
                                                            radius: 20,
                                                            backgroundColor:
                                                                Colors.grey,
                                                            child: Text(
                                                              'Xl',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      20.sp,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text('Amount'),
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 80.w),
                                                            width: 120.w,
                                                            decoration:
                                                                BoxDecoration(
                                                              border:
                                                                  Border.all(
                                                                color:
                                                                    Colors.grey,
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              5)),
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(Icons
                                                                        .do_not_disturb_on_outlined)),
                                                                Text(
                                                                  "1",
                                                                  style:
                                                                      TextStyle(),
                                                                ),
                                                                IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(Icons
                                                                        .control_point)),
                                                              ],
                                                            ))
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10.h,
                                                    ),
                                                    SizedBox(
                                                      width: double.infinity,
                                                      height: 40.h,
                                                      child: FlatButton(
                                                        onPressed: () {},
                                                        child: Text(
                                                          'Get Started!',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        color: Colors.brown,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ));
                                          },
                                          child: Text(
                                            'Add to card',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          color: Colors.brown,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          designSize: Size(411, 731),
        ),
      );

  Widget buildImages() => SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) => Container(
            height: 150.h,
            width: double.infinity,
            child: Card(
              child: Image.network(
                'https://source.unsplash.com/random?sig=$index',
                fit: BoxFit.cover,
              ),
            ),
          ),
          childCount: 20,
        ),
      );
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
          left: 20.w,
          right: 20.h,
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
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
      );

  Widget buildBackground(double shrinkOffset) => Opacity(
      opacity: disappear(shrinkOffset),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.network(
              'https://kenh14cdn.com/203336854389633024/2021/3/20/7-16162266947211736584790.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 10.h,
            left: 10.w,
            child: Container(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey,
                  )),
            ),
          ),
          Positioned(
            top: 30.h,
            right: 30.w,
            child: Container(
              width: 30.w,
              height: 30.h,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    color: Colors.grey,
                  )),
            ),
          ),
          Positioned(
              bottom: 120.h,
              right: 20.w,
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ))),
          Positioned(
              bottom: 50.h,
              right: 20.w,
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.play_circle_outline,
                    color: Colors.black,
                  ))),
        ],
      ));

  Widget buildFloating(double shrinkOffset) => Opacity(
      opacity: disappear(shrinkOffset),
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
                color: Colors.grey.withOpacity(0.8),
                blurRadius: 10,
                spreadRadius: 2,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Womens hoodie',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBar.builder(
                    itemSize: 20,
                    initialRating: 4.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Text(
                    '\$27.00',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                  )
                ],
              ),
            )
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
            Text(text, style: TextStyle(fontSize: 20.sp)),
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
