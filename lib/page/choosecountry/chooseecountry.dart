import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChooserCountryPage extends StatelessWidget {
  List<Map<String, String>> DataSanPham = [
    {
      "flag": "USA",
      "country":
          "https://img.flaticon.com/icons/png/512/206/206626.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF"
    },
    {
      "flag": "Hàn Quốc",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/800px-Flag_of_South_Korea.svg.png"
    },
    {
      "flag": "Nhật Bản",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/1280px-Flag_of_Japan.svg.png"
    },
    {
      "flag": "Trung Quốc",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/1200px-Flag_of_the_People%27s_Republic_of_China.svg.png"
    },
    {
      "flag": "Đức",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/1920px-Flag_of_Germany.svg.png"
    },
    {
      "flag": "Việt Nam",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/1280px-Flag_of_Vietnam.svg.png"
    },
    {
      "flag": "Anh",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/1920px-Flag_of_Australia_%28converted%29.svg.png"
    },
    {
      "flag": "Úc",
      "country":
          "https://img.flaticon.com/icons/png/512/206/206626.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF"
    },
    {
      "flag": "Pháp",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_France.svg/1280px-Flag_of_France.svg.png"
    },
    {
      "flag": "Nga",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Russia.svg/1280px-Flag_of_Russia.svg.png"
    },
    {
      "flag": "USA",
      "country":
          "https://img.flaticon.com/icons/png/512/206/206626.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF"
    },
    {
      "flag": "Hàn Quốc",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/800px-Flag_of_South_Korea.svg.png"
    },
    {
      "flag": "Nhật Bản",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/1280px-Flag_of_Japan.svg.png"
    },
    {
      "flag": "Trung Quốc",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/1200px-Flag_of_the_People%27s_Republic_of_China.svg.png"
    },
    {
      "flag": "Đức",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/1920px-Flag_of_Germany.svg.png"
    },
    {
      "flag": "Việt Nam",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/1280px-Flag_of_Vietnam.svg.png"
    },
    {
      "flag": "Anh",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/1920px-Flag_of_Australia_%28converted%29.svg.png"
    },
    {
      "flag": "Úc",
      "country":
          "https://img.flaticon.com/icons/png/512/206/206626.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF"
    },
    {
      "flag": "Pháp",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_France.svg/1280px-Flag_of_France.svg.png"
    },
    {
      "flag": "Nga",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Russia.svg/1280px-Flag_of_Russia.svg.png"
    },
    {
      "flag": "USA",
      "country":
          "https://img.flaticon.com/icons/png/512/206/206626.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF"
    },
    {
      "flag": "Hàn Quốc",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/800px-Flag_of_South_Korea.svg.png"
    },
    {
      "flag": "Nhật Bản",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/1280px-Flag_of_Japan.svg.png"
    },
    {
      "flag": "Trung Quốc",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/1200px-Flag_of_the_People%27s_Republic_of_China.svg.png"
    },
    {
      "flag": "Đức",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/1920px-Flag_of_Germany.svg.png"
    },
    {
      "flag": "Việt Nam",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/1280px-Flag_of_Vietnam.svg.png"
    },
    {
      "flag": "Anh",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/1920px-Flag_of_Australia_%28converted%29.svg.png"
    },
    {
      "flag": "Úc",
      "country":
          "https://img.flaticon.com/icons/png/512/206/206626.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF"
    },
    {
      "flag": "Pháp",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_France.svg/1280px-Flag_of_France.svg.png"
    },
    {
      "flag": "Nga",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Russia.svg/1280px-Flag_of_Russia.svg.png"
    },
    {
      "flag": "USA",
      "country":
          "https://img.flaticon.com/icons/png/512/206/206626.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF"
    },
    {
      "flag": "Hàn Quốc",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/800px-Flag_of_South_Korea.svg.png"
    },
    {
      "flag": "Nhật Bản",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/1280px-Flag_of_Japan.svg.png"
    },
    {
      "flag": "Trung Quốc",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/1200px-Flag_of_the_People%27s_Republic_of_China.svg.png"
    },
    {
      "flag": "Đức",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/1920px-Flag_of_Germany.svg.png"
    },
    {
      "flag": "Việt Nam",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/1280px-Flag_of_Vietnam.svg.png"
    },
    {
      "flag": "Anh",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/1920px-Flag_of_Australia_%28converted%29.svg.png"
    },
    {
      "flag": "Úc",
      "country":
          "https://img.flaticon.com/icons/png/512/206/206626.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF"
    },
    {
      "flag": "Pháp",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_France.svg/1280px-Flag_of_France.svg.png"
    },
    {
      "flag": "Nga",
      "country":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Russia.svg/1280px-Flag_of_Russia.svg.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      builder: () => Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text(
              'Checkout',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            )),
        body: Container(
          child: Column(
            children: [
              buidSearch(),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: DataSanPham.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          onTap: () {
                            Scaffold.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    DataSanPham[index]['flag'].toString())));
                          },
                          leading: Image.network(
                            DataSanPham[index]['country']!,
                            width: 50.h,
                            height: 50.h,
                          ),
                          title: Text(DataSanPham[index]['flag']!),
                        );
                      }))
            ],
          ),
        ),
      ),
      designSize: Size(411, 731),
    );
  }

  Container buidSearch() {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xfff3f3f3),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextField(
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.camera_alt_outlined),
            icon: Icon(
              Icons.search,
              color: Colors.brown,
            ),
            border: InputBorder.none,
            hintText: 'Search',
          ),
        ),
      ),
    );
  }
}
