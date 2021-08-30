import 'package:get/get.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class CreateDebitCartControler extends GetxController {
  late DatePickerController datepicker;
  Rx<DateTime> selectedDate = DateTime.now().obs;

  @override
  void onInit() {
    super.onInit();
    datepicker =
        DatePickerController(initialDateTime: DateTime.now(), minYear: 2000);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    datepicker.dispose();
  }
}
