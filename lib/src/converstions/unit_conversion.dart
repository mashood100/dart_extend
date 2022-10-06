extension UnitConverstion on int? {
  String convertToMemoryUnit() {
    if (this == null) "";

    if (this! >= 1073741824) {
      return (this! / 1073741824).toStringAsFixed(1) + " GB";
    } else if (this! >= 1048576) {
      return (this! / 1048576).toStringAsFixed(1) + " MB";
    } else if (this! >= 1024) {
      return (this! / 1024).toStringAsFixed(0) + " KB";
    } else if (this! > 1) {
      return " ${this!}  bytes";
    } else if (this! == 1 || this! == 0) {
      return this!.toString() + " 0  byte";
    }
    return "$this";
  }
}
