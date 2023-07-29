import 'package:applicantassignments/helpers/app_color.dart';
import 'package:applicantassignments/pages/attendance_section/attendance_details.dart';
import 'package:flutter/material.dart';

class AttendanceReport extends StatelessWidget {
  final Size size;
  const AttendanceReport({super.key, required this.size});

  // final TabController controller=TabController(length: 2, vsync:)

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ruchika's Presence",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: AppColors.darkGrey.withOpacity(0.3)))),
              child: TabBar(
                indicatorColor: AppColors.black,
                labelColor: AppColors.black,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                unselectedLabelColor: AppColors.darkGrey.withOpacity(0.6),
                tabs: const [
                  Tab(text: 'This Week'),
                  Tab(text: 'This Month'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: TabBarView(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 25),
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            reportDetails('Present', '04'),
                            verticalLine(size),
                            reportDetails('Absent', '01'),
                            verticalLine(size),
                            reportDetails('Percentage', '90%'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      AttendanceDetails(size: size)
                    ],
                  ),
                  //This month report
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            reportDetails('Present', '25'),
                            verticalLine(size),
                            reportDetails('Absent', '04'),
                            verticalLine(size),
                            reportDetails('Percentage', '86%'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      AttendanceDetails(size: size)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget reportDetails(String title, value) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        title,
        style: const TextStyle(
            color: Colors.black54, fontSize: 18, fontWeight: FontWeight.w500),
      ),
      Text(
        value,
        style: const TextStyle(
            color: AppColors.black, fontSize: 30, fontWeight: FontWeight.w500),
      )
    ],
  );
}

Widget verticalLine(size) {
  return SizedBox(
    height: size.height * 0.1,
    child: VerticalDivider(
      endIndent: 15,
      indent: 15,
      thickness: 1.5,
      width: 1,
      color: Colors.grey.shade800,
    ),
  );
}
