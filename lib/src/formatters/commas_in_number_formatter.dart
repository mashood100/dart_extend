import 'package:intl/intl.dart';

extension CommasInNumber on num? {
  String commasInNumber() {
    if (this == null) return "N/A";
    int roundedValue = this!.floor();

    String result =
        _beforePoint(roundedValue) + "." + _afterPoint(roundedValue);

    return result;
  }

  String _beforePoint(int value) {
// Divded the value into by 100 becaues the value of payment from the api is in pennis
//-fixed the divded value to 2 decimal point

    String fixedValue = (value / 100).toStringAsFixed(2);
//get the value before the decimal point
    int beforePoint = int.parse(fixedValue.toString().split(".")[0]);
// formater  for adding commas
    NumberFormat myFormat = NumberFormat.decimalPattern('en_us');

    return myFormat.format(beforePoint);
  }

  String _afterPoint(int value) {
    // Divded the value into by 100 becaues the value of payment from the api is in pennis
    //-fixed the divded value to 2 decimal point

    var fixedValue = (value / 100).toStringAsFixed(2);
    //get the value after the decimal point
    String afterPoint = fixedValue.toString().split(".")[1];
    return afterPoint;
//
  }
}
