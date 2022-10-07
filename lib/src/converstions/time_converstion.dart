import 'package:intl/intl.dart';

extension EpochConvertion on int {
  String epochTodate() {
    int intdate = this * 1000;
    DateTime date = DateTime.fromMillisecondsSinceEpoch(intdate);
    String dateString = DateFormat("y-MM-dd").format(date);
    return dateString;
  }

  String epochToDateAndTime() {
    int intdate = this * 1000;
    DateTime date = DateTime.fromMillisecondsSinceEpoch(intdate);
    String time = DateFormat("h:m a").format(date);
    String dateString = DateFormat("y-MM-dd").format(date);

    return "$dateString-$time";
  }

  DateTime epochToDate() {
    int intdate = this * 1000;
    DateTime date = DateTime.fromMillisecondsSinceEpoch(intdate);
    return date;
  }

  String epochToTime() {
    int intdate = this * 1000;
    DateTime date = DateTime.fromMillisecondsSinceEpoch(intdate);
    var time = DateFormat("h:m a").format(date);
    return time.toString();
  }

  weekOftheYearFromEpoch() {
    DateTime getTime = DateTime.fromMillisecondsSinceEpoch(this * 1000);
    final int todayInDays =
        getTime.difference(DateTime(getTime.year, 1, 1, 0, 0)).inDays;
    final result = (todayInDays / 7).ceil();
    return result;
  }
}

////////////////////////////////////////////
extension DateToCovertion on DateTime {
  int weekOftheYearFromDate() {
    final int todayInDays = difference(DateTime(year, 1, 1, 0, 0)).inDays;
    final result = (todayInDays / 7).ceil();
    return result;
  }
}

extension Converter on num {
  // method will convert your total seconds into  readeable duration
  //like 59 mins or 1 hr
  String secToDuration() {
    if (this > 60 && this < 3600) {
      return "${(this / 60).toStringAsFixed(1)} min";
    } else if (this > 3600 && this < 86400) {
      return "${(this / 3600).toStringAsFixed(1)} hr";
    } else if (this > 86400 && this < 604800) {
      return "${(this / 86400).toStringAsFixed(1)} Days";
    } else if (this > 604800) {
      return "${(this / 604800).toStringAsFixed(1)} Weeks";
    } else {
      return "${toStringAsFixed(1)}Sec";
    }
  }

  // method will convert your total seconds into  readeable duration
  //like 59 mins or 1 hr
  String minToDuration() {
    if (this >= 60 && this < 1440) {
      return "${(this / 60).toStringAsFixed(1)} hr";
    } else if (this >= 1440 && this < 10080) {
      return "${(this / 1440).toStringAsFixed(1)} days";
    } else if (this >= 10080) {
      return "${(this / 10080).toStringAsFixed(1)} weeks";
    } else {
      return "${toStringAsFixed(1)} sec";
    }
  }
}
