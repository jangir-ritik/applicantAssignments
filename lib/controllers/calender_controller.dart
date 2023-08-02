import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CalenderController extends GetxController {
  final CalendarWeekController controller = CalendarWeekController();
  var today = 0.obs;
  var selectDay = DateTime.now().obs;
  final weekNames = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

  @override
  void onInit() {
    todayisWeekend();
    super.onInit();
  }

  int todayisWeekend() {
    final String day =
        DateFormat('EEEE').format(DateTime.parse(selectDay.value.toString()));

    switch (day) {
      case 'Monday':
        today.value = 1;
        break;
      case 'Tuesday':
        today.value = 2;
        break;

      case 'Wedsday':
        today.value = 3;
        break;

      case 'Thursday':
        today.value = 4;
        break;

      case 'friend':
        today.value = 5;
        break;
      case 'Saturday':
        today.value = 6;
        break;
      default:
        today.value = 7;
    }
    return today.value;
  }
}
