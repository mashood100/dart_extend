import 'package:intl/intl.dart';

extension CommasInNumber on num? {
  // the method will convert any num type value in decimal pattern eg :22000 ===> 22,000
  String toDecimalPattern({int valueAfterpoint = 0}) {
    if (this == null) return "N/A";
    num roundedValue = this!;

    String result = valueAfterpoint <= 0
        ? _beforePoint(roundedValue, valueAfterpoint)
        : "${_beforePoint(roundedValue, valueAfterpoint)}.${_afterPoint(roundedValue, valueAfterpoint)}";

    return result;
  }

  String _beforePoint(num value, valueAfterpoint) {
// Divded the value into by 100 becaues the value of payment from the api is in pennis
//-fixed the divded value to 2 decimal point

    String fixedValue = value.toStringAsFixed(valueAfterpoint);
//get the value before the decimal point
    int beforePoint = int.parse(fixedValue.toString().split(".")[0]);
// formater  for adding commas
    NumberFormat myFormat = NumberFormat.decimalPattern('en_us');

    return myFormat.format(beforePoint);
  }

  String _afterPoint(num value, valueAfterpoint) {
    // Divded the value into by 100 becaues the value of payment from the api is in pennis
    //-fixed the divded value to 2 decimal point

    var fixedValue = value.toStringAsFixed(valueAfterpoint);
    //get the value after the decimal point
    String afterPoint = fixedValue.toString().split(".")[1];
    return afterPoint;
//
  }
}
