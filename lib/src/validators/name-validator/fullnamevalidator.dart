extension StringValidators on String{
      bool isFullName() {
    if (RegExp("^[a-zA-Z]+ [a-zA-Z]+").hasMatch(this)) {
      return true;
    } else {
      return false;
    }
  }

}