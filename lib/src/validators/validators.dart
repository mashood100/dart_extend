extension StringValidators on String {
  bool isemail() {
    if (RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(this)) {
      return true;
    } else {
      return false;
    }
  }

  bool get isNum => num.tryParse(this) != null ? true : false;
}

extension NullCheck on dynamic {
  bool get isNull => this == null ? true : false;
}
