import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../controllers/attendance_controler.dart';
import '../../helpers/app_color.dart';
import '../../models/attendance_details.dart';

class AttendanceDetails extends StatelessWidget {
  final Size size;
  AttendanceDetails({super.key, required this.size});
  final AttendanceController attendanceController =
      Get.put(AttendanceController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Attendance Details",
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        ListTileTheme.merge(
          dense: true,
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: attendanceController.attendanceList.length,
            itemBuilder: (context, index) {
              AttendanceDeatilsModel attendanceDetails =
                  attendanceController.attendanceList[index];
              return Container(
                height: size.width * 0.4,
                width: size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              attendanceDetails.day.toString(),
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(width: 5),
                            Text(attendanceDetails.date.toString(),
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500))
                          ],
                        ),
                        SvgPicture.asset(
                          "assets/svgs/check.svg",
                        ),
                      ],
                    ),
                    const Text(
                      "Arrived on time",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: AppColors.darkGrey),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dropped By  \t- ${attendanceDetails.droppedBy}',
                          style: const TextStyle(
                              color: AppColors.darkGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '- ${attendanceDetails.droppedTime}',
                          style: const TextStyle(
                              color: AppColors.darkGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Picked up by - ${attendanceDetails.pickedBy}',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: AppColors.darkGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '- ${attendanceDetails.pickedTime}',
                          style: const TextStyle(
                              color: AppColors.darkGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
