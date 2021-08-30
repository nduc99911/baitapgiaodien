import 'package:btgiaodien/page/home/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class SearchPage extends GetView<SearchPage> {
  List<String> urlWoment = [
    'assets/images/women.png',
    'assets/images/women1.png',
    'assets/images/women2.png',
    'assets/images/women3.png',
  ];
  List<String> urlMent = [
    'assets/images/ment1.png',
    'assets/images/ment2.png',
    'assets/images/ment3.png',
    'assets/images/ment4.png',
  ];
  List<String> titleWoment = [
    'NEW IN',
    'CLOTHING',
    'SHOES',
    'HATS',
  ];
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xfff3f3f3),
                      ),
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Chị nhấn vào kính lúp mới hiện ra',
                            suffixIcon: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.grey,
                            ),
                            prefixIcon: Container(
                              margin: EdgeInsets.only(left: 30.w),
                              child: IconButton(
                                  onPressed: () {
                                    showSearch(
                                        context: context,
                                        delegate: DataSearch());
                                  },
                                  icon: Icon(Icons.search)),
                            )),
                      )),
                ),
                bottom: TabBar(
                  indicatorColor: Colors.brown,
                  labelColor: Colors.brown,
                  tabs: [
                    Tab(
                      text: "Women",
                    ),
                    Tab(
                      text: "Men",
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Container(
                    color: Colors.white,
                    child: ItemWomen(),
                  ),
                  Container(color: Colors.white, child: ItemMent()),
                ],
              ))),
      designSize: Size(411, 731),
    );
  }

  StaggeredGridView ItemMent() {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 1,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) =>
          buildItemGirdViewMent(index),
      staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
    );
  }

  Container buildItemGirdViewWoment(int index) {
    return Container(
        child: Stack(
      children: [
        Container(
          width: 410.w,
          height: 230.h,
          color: Colors.white,
        ),
        Positioned(
          top: 50.h,
          left: 20.w,
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
            height: 130.h,
            child: Container(
              margin: EdgeInsets.only(top: 45.h, left: 20.w),
              child: Text(
                titleWoment[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.sp,
                    fontFamily: "Bulmer"),
              ),
            ),
          ),
        ),
        Positioned(
          left: 250.w,
          child: Container(
            width: 150.w,
            height: 150.h,
            child: Image.asset(urlWoment[index]),
          ),
        )
      ],
    ));
  }

  Container buildItemGirdViewMent(int index) {
    return Container(
        child: Stack(
      children: [
        Container(
          width: 410.w,
          height: 230.h,
          color: Colors.white,
        ),
        Positioned(
          top: 50.h,
          left: 20.w,
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
            height: 130.h,
            child: Container(
              margin: EdgeInsets.only(top: 45.h, left: 20.w),
              child: Text(
                titleWoment[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.sp,
                    fontFamily: "Bulmer"),
              ),
            ),
          ),
        ),
        Positioned(
          left: 250.w,
          child: Container(
            width: 150.w,
            height: 150.h,
            child: Image.asset(urlMent[index]),
          ),
        )
      ],
    ));
  }

  StaggeredGridView ItemWomen() {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 1,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) =>
          buildItemGirdViewWoment(index),
      staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final cities = [
    "ABCDF",
    "ABCDEF",
    "BCFDD",
    "BGTYU",
    "CDRTYF",
    "CDRTGH",
    "DRETYHG",
    "DEKJI",
    "EDTYUH",
    "GIKKH",
    "KIOD",
    "POLIKJ",
    "UNHYUO",
    "YTEND",
    "QEDFF",
    "VFFD",
    "MFFD",
    "NFFD",
    "VOFFD",
    "LFFD",
    "PFFD",
    "RFFD",
    "EFFD",
    "TFFD",
    "YFFD",
    "UFFD",
    "IFFD",
  ];
  final recentCities = [
    // "Okdbt",
    // "Kidon",
    // "Pondu",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    //action for appbar
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    //leading icon on the left of the app bar
    return IconButton(
        onPressed: () {
          close(context, "");
        },
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestionList = query.isEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query)).toList();
    return suggestionList.length == 0
        ? Center(child: Image.asset('assets/images/nosearch.jpg'))
        : ListView.builder(
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.clean_hands),
              title: Text(suggestionList[index]),
            ),
            itemCount: suggestionList.length,
          );
  }
}
