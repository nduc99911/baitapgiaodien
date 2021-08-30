import 'package:btgiaodien/page/Filer/filterpage.dart';
import 'package:btgiaodien/page/MyOrDer/Myorders.dart';
import 'package:btgiaodien/page/detailproduct/detaiproductPage.dart';
import 'package:btgiaodien/page/home/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    List<String> url = [
      'assets/images/quanao.png',
      'assets/images/quanao2.png',
      'assets/images/quanao3.png',
      'assets/images/quanao4.png',
      'assets/images/quanao5.png',
      'assets/images/quanao.png',
    ];
    List<Map<String, String>> DataSanPham = [
      {"text": "Handbag Lv", "Price": "\$255"},
      {"text": "Dress", "Price": "\$87"},
      {"text": "Shoes", "Price": "\$201"},
      {"text": "T-Shirt", "Price": "\$86"},
      {"text": "Handbag", "Price": "\$102"},
      {"text": "Short", "Price": "\$98"},
    ];
    return ScreenUtilInit(
      builder: () => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: BackButton(),
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 0,
            title: Text(
              'New Trend',
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Get.to(MyOrder());
                  },
                  icon: Icon(Icons.shopping_cart_outlined)),
            ],
          ),
          body: Container(
            color: Colors.white10,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [addSort(), addFilter()],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemCount: 6,
                    physics:
                        NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                    shrinkWrap: true,
                    mainAxisSpacing: 10.w,
                    crossAxisSpacing: 5.h,
                    itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.only(left: 5.w),
                          child: itemGirdView(
                            url[index],
                            DataSanPham[index]["text"],
                            DataSanPham[index]["Price"],
                          ),
                        ),
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
                ItemNewTrend("NEW TREND", "assets/images/quanao2.png"),
                SizedBox(
                  height: 20.h,
                ),
                StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemCount: 4,
                    physics:
                        NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                    shrinkWrap: true,
                    mainAxisSpacing: 10.w,
                    crossAxisSpacing: 16.h,
                    itemBuilder: (context, index) => Container(
                          child: itemGirdView(
                            url[index],
                            DataSanPham[index]["text"],
                            DataSanPham[index]["Price"],
                          ),
                        ),
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
                ItemNewTrend("SRIPPES", "assets/images/quanao6.png"),
                SizedBox(
                  height: 10.h,
                ),
                ItemNewTrend("SUMMER SEA", "assets/images/quanao7.png"),
                Container(
                  margin: EdgeInsets.only(left: 20.w, right: 20.h),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recetly viewed',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.sp),
                        ),
                        Icon(Icons.remove_circle_outline),
                      ],
                    ),
                  ),
                ),
                StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemCount: 2,
                    physics:
                        NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                    shrinkWrap: true,
                    mainAxisSpacing: 10.w,
                    crossAxisSpacing: 16.h,
                    itemBuilder: (context, index) => Container(
                          child: itemGirdView(
                            url[index],
                            DataSanPham[index]["text"],
                            DataSanPham[index]["Price"],
                          ),
                        ),
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
                Container(
                  margin: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Saved items',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.sp),
                        ),
                        Text(
                          'View all',
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.brown),
                        )
                      ],
                    ),
                  ),
                ),
                BuidSaveItem(
                    title: 'Handbag LV',
                    price: "\$225",
                    image: "assets/images/quanao3.png"),
                BuidSaveItem(
                    title: 'T-Shirt',
                    price: "\$123",
                    image: "assets/images/quanao4.png"),
                BuildBrandsTitle(),
                SizedBox(
                  height: 15.h,
                ),
                BuidBrandsItems(),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.w),
                  child: Text(
                    'Styles based on your shopping habits',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                  ),
                ),
                StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemCount: 2,
                    physics:
                        NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                    shrinkWrap: true,
                    mainAxisSpacing: 10.w,
                    crossAxisSpacing: 16.h,
                    itemBuilder: (context, index) => Container(
                          child: itemGirdView(
                            url[index],
                            DataSanPham[index]["text"],
                            DataSanPham[index]["Price"],
                          ),
                        ),
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1))
              ],
            ),
          )),
      designSize: Size(411, 731),
    );
  }

  Container BuidBrandsItems() {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              BuildItemBands(title: "Nike", With: 80),
              BuildItemBands(title: "Adidas", With: 80),
              BuildItemBands(title: "Vans", With: 80),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              BuildItemBands(title: "The North face", With: 130),
              BuildItemBands(title: "Collusion", With: 80),
              BuildItemBands(title: "Calvin Klenin", With: 130),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              BuildItemBands(title: "Champion", With: 100),
              BuildItemBands(title: "Fred Perry", With: 100),
              BuildItemBands(title: "Fila", With: 60),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              BuildItemBands(title: "Carhartt Wlp", With: 110),
              BuildItemBands(title: "Puma", With: 90),
              BuildItemBands(title: "Levi's", With: 70),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              BuildItemBands(title: "Dr Martens", With: 120),
              BuildItemBands(title: "Tommy Hilfger", With: 130),
              BuildItemBands(title: "Lascolate", With: 100),
            ],
          ),
        ],
      ),
    );
  }

  Container BuildItemBands({String? title, int? With}) {
    return Container(
        margin: EdgeInsets.only(right: 10.w, left: 10.w),
        width: With!.w,
        decoration: BoxDecoration(
          color: Color(0xfff3f3f3),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title!,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ));
  }

  Container BuildBrandsTitle() {
    return Container(
      margin: EdgeInsets.only(left: 20.w),
      child: Text(
        'Brands you may like',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
      ),
    );
  }

  GestureDetector BuidSaveItem({String? title, String? price, String? image}) {
    return GestureDetector(
        onTap: () {
          Get.to(AdvancedSliverAppBar());
        },
        child: Container(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 190.h,
                color: Colors.white,
              ),
              Positioned(
                left: 20.w,
                top: 60.h,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(3, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    width: 380.w,
                    height: 120.h,
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 20.h, right: 110),
                            child: Text(
                              title!,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            )),
                        Container(
                          margin: EdgeInsets.only(left: 90),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                price!,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 2, color: Colors.brown)),
                                child: Icon(
                                  Icons.navigate_next_outlined,
                                  color: Colors.brown,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ),
              Positioned(
                top: 10.h,
                child: Container(
                  width: 100.w,
                  height: 120.h,
                  child: Image.asset(image!),
                ),
              )
            ],
          ),
        ));
  }

  Stack ItemNewTrend(String? title, String? image) {
    return Stack(
      children: [
        Container(
          width: 200.w,
          height: 230.h,
          color: Colors.white,
        ),
        Positioned(
          top: 50.h,
          child: Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.only(
                top: 30.h, bottom: 30.h, left: 30.w, right: 30.w),
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
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(3, 1), // changes position of shadow
                ),
              ],
            ),
            width: 390.w,
            height: 150.h,
            child: Text(
              title!,
              style: TextStyle(fontSize: 30.sp),
            ),
          ),
        ),
        //iamge
        Positioned(
          left: 200.h,
          child: Container(
            child: Image.asset(
              image!,
              width: 300.w,
              height: 200.h,
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }

  GestureDetector itemGirdView(String url, String? title, String? price) {
    return GestureDetector(
      onTap: () {
        Get.to(AdvancedSliverAppBar());
      },
      child: Container(
        margin: EdgeInsets.all(5),
        child: Stack(
          children: [
            Container(
              width: 20.w,
              height: 190.h,
              color: Colors.white,
            ),
            Positioned(
              top: 70.h,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(3, 1), // changes position of shadow
                    ),
                  ],
                ),
                height: 110.h,
                width: 180.w,
                child: Center(),
              ),
            ),
            Positioned(
              top: 100.h,
              left: 30.w,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10.h),
                      child: Text(
                        title!,
                        style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 60.w),
                            child: Text(
                              price!,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20.w),
                            child: IconButton(
                                color: Colors.red,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            //image
            Positioned(
              left: 80.w,
              child: Container(
                width: 100.w,
                height: 100.h,
                child: Image.asset(
                  '$url',
                  width: 400.w,
                  height: 400.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container addSort() {
    return Container(
      width: 180.w,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.brown,
          width: 1,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Get.defaultDialog(
                  title: "Sort",
                  content: Container(
                    width: 500.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recomended',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                        Divider(),
                        Text(
                          'Whats New',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                        Divider(),
                        Text(
                          'Price:High to low',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                        Divider(),
                        Text(
                          'Price:Low to high',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                        Divider(),
                      ],
                    ),
                  ));
            },
            icon: Icon(
              Icons.sort,
              color: Colors.brown,
            ),
          ),
          Text(
            'Sort',
            style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Container addFilter() {
    return Container(
      width: 180.w,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.brown,
          width: 1,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Get.to(filterPage());
            },
            icon: Icon(
              Icons.filter_list_alt,
              color: Colors.brown,
            ),
          ),
          Text(
            'Filter',
            style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
