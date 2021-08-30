import 'package:btgiaodien/page/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class Body extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return _BodyState();
//   }
// }
class Controller extends GetxController {
  var currentPage = 0.obs;
  List<Map<String, String>> splashData = [
    {"text": "View product 360 derees", "image": "assets/images/splash1.jpg"},
    {"text": "Find product easily", "image": "assets/images/splash2.jpg"},
    {"text": "Payment is easy", "image": "assets/images/splash3.jpg"}
  ];
}

class Body extends StatelessWidget {
  final Controller controller = Get.put(Controller());
  // int currentPage = 0;
  // List<Map<String, String>> splashData = [
  //   {"text": "View product 360 derees", "image": "assets/images/splash1.jpg"},
  //   {"text": "Find product easily", "image": "assets/images/splash2.jpg"},
  //   {"text": "Payment is easy", "image": "assets/images/splash3.jpg"}
  // ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: PageView.builder(
                        onPageChanged: controller.currentPage,
                        itemCount: 3,
                        itemBuilder: (context, index) => ImageSplash(
                              image: controller.splashData[index]["image"],
                              title: controller.splashData[index]["text"],
                            ))),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                3, (index) => builDiot(index: index))),
                        Spacer(
                          flex: 3,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 40,
                          child: FlatButton(
                            onPressed: () {
                              Get.to(SignUp());
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
                        Spacer()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container builDiot({int? index}) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: controller.currentPage.value == index ? 20 : 6,
      decoration: BoxDecoration(
          color: Colors.brown, borderRadius: BorderRadius.circular(3)),
    );
  }
}

class ImageSplash extends StatelessWidget {
  const ImageSplash({
    Key? key,
    this.image,
    this.title,
  }) : super(key: key);
  final String? image;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(image!),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                title!,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'You can see the product with all angels,true and convenient',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
