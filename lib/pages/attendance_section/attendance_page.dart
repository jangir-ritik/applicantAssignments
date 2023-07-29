import 'package:applicantassignments/controllers/calender_controller.dart';
import 'package:applicantassignments/helpers/app_color.dart';
import 'package:applicantassignments/pages/attendance_section/attendance_appbar.dart';
import 'package:applicantassignments/pages/attendance_section/attendance_report.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AttendancePage extends StatelessWidget {
  AttendancePage({super.key});

  final CalenderController calenderController = Get.put(CalenderController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AttendanceAppbar(size: size),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              height: size.height * 0.1,
              width: size.width,
              padding: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.lightBlue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Yay! Ruchika is present today',
                    style: TextStyle(
                        fontSize: 13,
                        color: AppColors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Image.asset('assets/images/turtle.png')
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat('MMMM').format(DateTime.now()),
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(width: 10),
                SvgPicture.asset(
                  'assets/svgs/dropDown.svg',
                  height: 25,
                ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/svgs/calendar.svg',
                  height: 30,
                ),
              ],
            ),
            const SizedBox(height: 15),
            CalendarWeek(
              dayShapeBorder: BoxShape.circle,
              todayBackgroundColor: calenderController.today.value == 6 ||
                      calenderController.today.value == 6
                  ? Colors.transparent
                  : AppColors.purple,
              showMonth: false,
              todayDateStyle: TextStyle(
                  color: calenderController.today.value == 6 ||
                          calenderController.today.value == 6
                      ? AppColors.red
                      : Colors.white,
                  fontSize: 18),
              dayOfWeekStyle: const TextStyle(
                  color: AppColors.voilet,
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
              weekendsStyle: const TextStyle(
                  color: AppColors.red,
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
              dateStyle: const TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
              pressedDateStyle:
                  const TextStyle(color: Colors.white, fontSize: 18),
              pressedDateBackgroundColor: AppColors.purple,
              dayOfWeek: calenderController.weekNames,
              weekendsIndexes: const [5],
              controller: calenderController.controller,
              height: size.width * 0.3,
              backgroundColor: AppColors.darkGrey.withOpacity(0.06),
              minDate: DateTime.now().add(
                const Duration(days: -26),
              ),
              maxDate: DateTime.now().add(
                const Duration(days: 1),
              ),
              onDatePressed: (DateTime datetime) {},
              onDateLongPressed: (DateTime datetime) {
                // Do something
              },
              onWeekChanged: () {
                // Do something
              },
              monthViewBuilder: (DateTime time) => Align(
                alignment: FractionalOffset.center,
                child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      DateFormat.yMMMM().format(time),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                    )),
              ),
              decorations: [
                DecorationItem(
                  //decorationAlignment: FractionalOffset.bottomRight,
                  date: DateTime.now(),
                  // decoration: const Icon(
                  //   Icons.today,
                  //   color: AppColors.purple,
                  // )
                ),
                // DecorationItem(
                //     date: DateTime.now().add(const Duration(days: 3)),
                //     decoration: const Text(
                //       'Holiday',
                //       style: TextStyle(
                //         color: Colors.brown,
                //         fontWeight: FontWeight.w600,
                //       ),
                //     )),
              ],
            ),
            const SizedBox(height: 20),
            AttendanceReport(size: size),
          ],
        ),
      ),
    );
  }
}
