extension NumberParsing on int {
  // the method change your simple number to ordinal number
  // e.g 1st 2nd 3rd 4th .......
  String ordinal() {
    if ((this < 0)) {
      //here you change the range
      throw Exception('Invalid number: Number must be a positive number');
    }
    if (this == 0) {
      return '0';
    }

    String stringValue = toString();

    switch (stringValue[stringValue.length - 1]) {
      case '1':
        return '${stringValue}st';
      case '2':
        return '${stringValue}nd';
      case '3':
        return '${stringValue}rd';
      default:
        return '${stringValue}th';
    }
  }
}

extension RemoveDuplicateFromList on List {
  List removeduplicates() {
    return toSet().toList();
  }
}
