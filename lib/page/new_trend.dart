import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewTrend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      home: Scaffold(
        appBar: buidAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    addSort(),
                    addFilter(),
                  ],
                ),
                Expanded(
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      itemGirdView(),
                      itemGirdView(),
                      itemGirdView(),
                      itemGirdView(),
                      itemGirdView(),
                      itemGirdView(),
                      itemGirdView(),
                      itemGirdView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container itemGirdView() {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(10),
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
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(3, 1), // changes position of shadow
                ),
              ],
            ),
            width: 450,
            height: 460,
          ),
          Positioned(
            top: 50,
            child: Container(
                width: 450,
                height: 260,
                child: Container(
                    margin: EdgeInsets.only(top: 80, right: 310),
                    child: Column(
                      children: [
                        Text(
                          'Handbag LV',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$225',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.filter_list_outlined)
                            ],
                          ),
                        )
                      ],
                    ))),
          ),
          Positioned(
            left: 100,
            bottom: 90,
            child: Container(
              width: 100,
              height: 100,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/anh1.jpg',
                  width: 400,
                  height: 400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container addSort() {
    return Container(
      width: 200,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
          Icon(
            Icons.sort,
            color: Colors.brown,
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
      width: 200,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
          Icon(
            Icons.filter_list_alt,
            color: Colors.brown,
          ),
          Text(
            'Filter',
            style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  AppBar buidAppBar() {
    return AppBar(
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
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}
