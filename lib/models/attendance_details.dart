// ignore_for_file: public_member_api_docs, sort_constructors_first

class AttendanceDeatilsModel {
  int? detId;
  String? day;
  String? date;
  String? droppedBy;
  String? pickedBy;
  String? pickedTime;
  String? droppedTime;

  AttendanceDeatilsModel({
    this.detId,
    this.day,
    this.date,
    this.droppedBy,
    this.pickedBy,
    this.pickedTime,
    this.droppedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detId': detId,
      'day': day,
      'date': date,
      'droppedBy': droppedBy,
      'pickedBy': pickedBy,
      'pickedTime': pickedTime,
      'droppedTime': droppedTime,
    };
  }

  factory AttendanceDeatilsModel.fromMap(Map<String, dynamic> map) {
    return AttendanceDeatilsModel(
      detId: map['detId'] != null ? map['detId'] as int : null,
      day: map['day'] != null ? map['day'] as String : null,
      date: map['date'] != null ? map['date'] as String : null,
      droppedBy: map['droppedBy'] != null ? map['droppedBy'] as String : null,
      pickedBy: map['pickedBy'] != null ? map['pickedBy'] as String : null,
      pickedTime:
          map['pickedTime'] != null ? map['pickedTime'] as String : null,
      droppedTime:
          map['droppedTime'] != null ? map['droppedTime'] as String : null,
    );
  }
}
