import 'package:intl/intl.dart';

extension EpochConverstions on int? {
  String epochTodate() {
    if (this == null) return "N/A";
    int intdate = this! * 1000;
    DateTime date = DateTime.fromMillisecondsSinceEpoch(intdate);
    String dateString = DateFormat("y-MM-dd").format(date);
    return dateString;
  }

  String epochToDateAndTime() {
    if (this == null) return "N/A";

    int intdate = this! * 1000;
    DateTime date = DateTime.fromMillisecondsSinceEpoch(intdate);
    String time = DateFormat("h:m a").format(date);
    String dateString = DateFormat("y-MM-dd").format(date);

    return dateString + "-" + time;
  }
}
