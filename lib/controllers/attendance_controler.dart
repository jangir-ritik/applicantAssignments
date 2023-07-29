import 'package:applicantassignments/models/attendance_details.dart';
import 'package:get/get.dart';

class AttendanceController extends GetxController {
  List<AttendanceDeatilsModel> attendanceList = <AttendanceDeatilsModel>[].obs;

  @override
  void onInit() {
    fatchAttendancereport();
    super.onInit();
  }

  void fatchAttendancereport() async {
    var attendancereport = [
      AttendanceDeatilsModel(
        detId: 1,
        day: 'Friday',
        date: '28-07-2023',
        droppedBy: "Mr. Sunil Patil",
        pickedBy: "Mrs. Swati Patil",
        droppedTime: "08:24am",
        pickedTime: "12:03pm",
      ),
      AttendanceDeatilsModel(
        detId: 2,
        day: 'Thursday',
        date: '27-07-2023',
        droppedBy: "Mr. Anil Patil",
        pickedBy: "Mr. Rakesh Gutpa",
        droppedTime: "08:35am",
        pickedTime: "12:03pm",
      ),
      AttendanceDeatilsModel(
        detId: 3,
        day: 'Wednesday',
        date: '26-07-2023',
        droppedBy: "Mr. Venkatesh",
        pickedBy: "Mrs. Keerthi Manisha",
        droppedTime: "08:46am",
        pickedTime: "12:03pm",
      ),
      // AttendanceDeatilsModel(
      //   detId: 4,
      //   day: 'Tuesday',
      //   date: '25-07-2023',
      //   droppedBy: "Mr. Sunil Yadav",
      //   pickedBy: "Mr. John Doe",
      //   droppedTime: "09:15am",
      //   pickedTime: "12:03pm",
      // ),
      // AttendanceDeatilsModel(
      //   detId: 5,
      //   day: 'Monday',
      //   date: '24-07-2023',
      //   droppedBy: "Mr. Manoj Kumar",
      //   pickedBy: "Mrs. Rajasre Patil",
      //   droppedTime: "08:55am",
      //   pickedTime: "12:03pm",
      // ),
    ];
    attendanceList = attendancereport;
  }
}
