extension TimeAgoEpoch on int {
  String timeAgoSinceEpochDate({bool dateInNumbers = true}) {
    DateTime notificationTime =
        DateTime.fromMillisecondsSinceEpoch(this * 1000);
    return _checkDiff(
        notificationTime: notificationTime, dateInNumbers: dateInNumbers);
  }

  _checkDiff(
      {required DateTime notificationTime, required bool dateInNumbers}) {
    final currentTime = DateTime.now();

    final difference = currentTime.difference(notificationTime);

    if ((difference.inDays / 365).floor() >= 2) {
      return "${(difference.inDays / 365).floor()} years ago";
    } else if ((difference.inDays / 365).floor() >= 1) {
      return (dateInNumbers) ? '1 year ago' : 'Last year';
    }
    // for weeks
    else if ((difference.inDays / 7).floor() >= 1) {
      return (dateInNumbers) ? '1 week ago' : 'Last week';
    }
    // for days
    else if (difference.inDays >= 2) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays >= 1) {
      return (dateInNumbers) ? '1 day ago' : 'Yesterday';
    } else if (difference.inHours >= 2) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours >= 1) {
      return (dateInNumbers) ? '1 hour ago' : 'An hour ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inMinutes >= 1) {
      return (dateInNumbers) ? '1 minute ago' : 'A minute ago';
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} seconds ago';
    } else {
      return 'Just now';
    }
  }
}

extension TimeAgoDateTime on DateTime {
  String timeAgoSinceDateTime({bool dateInNumbers = true}) {
    DateTime notificationTime = this;
    return _checkDiff(
        notificationTime: notificationTime, dateInNumbers: dateInNumbers);
  }

  _checkDiff(
      {required DateTime notificationTime, required bool dateInNumbers}) {
    final currentTime = DateTime.now();

    final difference = currentTime.difference(notificationTime);

    if ((difference.inDays / 365).floor() >= 2) {
      return "${(difference.inDays / 365).floor()} years ago";
    } else if ((difference.inDays / 365).floor() >= 1) {
      return (dateInNumbers) ? '1 year ago' : 'Last year';
    }
    // for weeks
    else if ((difference.inDays / 7).floor() >= 1) {
      return (dateInNumbers) ? '1 week ago' : 'Last week';
    }
    // for days
    else if (difference.inDays >= 2) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays >= 1) {
      return (dateInNumbers) ? '1 day ago' : 'Yesterday';
    } else if (difference.inHours >= 2) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours >= 1) {
      return (dateInNumbers) ? '1 hour ago' : 'An hour ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inMinutes >= 1) {
      return (dateInNumbers) ? '1 minute ago' : 'A minute ago';
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} seconds ago';
    } else {
      return 'Just now';
    }
  }
}
