import 'package:get/get.dart';

class addgitcardController extends GetxController {
  var DigitCode = ''.obs;
  var DigitPin = ''.obs;
  var code = ''.obs;
  code1() {
    code.value = DigitCode.value + DigitPin.value;
  }
}
