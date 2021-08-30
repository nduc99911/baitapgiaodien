import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignPage extends StatelessWidget {
  static const menuItems = <String>[
    'One',
    'Two',
    'Three',
    'Four',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text('SignUp', style: TextStyle(color: Colors.black)),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                    child: ListView(
                  children: [
                    Text(
                      'Email address',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    _TextFiledName(
                        lable: "Email address", hint: "Enter Email Address"),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      'Well send your order confimation here',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      'First name',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    _TextFiledName(
                        lable: "First name", hint: "Enter First Name"),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      'Last name',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    _TextFiledName(lable: "Last name", hint: "Enter last name"),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    _TextFiledName(lable: "Pasword", hint: "Enter password"),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      'Must be 10 or more characters',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      'Date of birth',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    buidDate(),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      'You need to be 16 or over to use Ebuy',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      'Monstly interested in (Optional)',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ));
  }

  Row buidDate() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
                color: Colors.grey, style: BorderStyle.solid, width: 1),
          ),
          child: DropdownButton(
            items: _dropDownMenuItems,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                  color: Colors.grey, style: BorderStyle.solid, width: 1),
            ),
            child: DropdownButton(
              items: _dropDownMenuItems,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                  color: Colors.grey, style: BorderStyle.solid, width: 1),
            ),
            child: DropdownButton(
              items: _dropDownMenuItems,
            ),
          ),
        ),
      ],
    );
  }
}

TextField _TextFiledName({String? lable, String? hint}) {
  return TextField(
    keyboardType: TextInputType.name,
    textInputAction: TextInputAction.done,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      labelText: lable,
      hintText: hint,
    ),
  );
}
