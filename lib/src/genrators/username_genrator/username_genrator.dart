import 'dart:math';
import 'names_and_adjectives.dart' as my_usernames;

abstract class UsernameGenerator {
  /// A list of names for generating a random username from
  List<String> names = my_usernames.names;
  List<String> adjectives = my_usernames.adjectives;
  final Random _random = Random();

  String makeUserName(String emailOrName,
      {List<String> adjectives = const [],
      DateTime? date,
      bool withNumber = true,
      int numberSeed = 100,
      String prefix = '',
      String suffix = '',
      bool addSpace = true}) {
    String space = '_';
    if (!addSpace) {
      space = "";
    }
    // Check if emailOrName is email
    if (emailOrName.contains('@')) {
      emailOrName = emailOrName
          .substring(0, emailOrName.indexOf('@'))
          .replaceAll(RegExp(r'[^a-zA-Z\d]'), '');
    }

    emailOrName = emailOrName
        .trim()
        .replaceAll(RegExp(r'[^a-zA-Z\d\s]'), ' ')
        .replaceAll(RegExp(r'\s{2,}'), ' ')
        .replaceAll(' ', space);

    // generate date string
    var dateString = '';
    if (date != null) {
      dateString = date.year.toString().substring(2, 4);
    }

    var adjective = '';
    if (adjectives.isNotEmpty) {
      adjective = _getRandomElement(adjectives);
    }

    var numberString = '';
    if (dateString == '' && withNumber) {
      numberString = _random.nextInt(numberSeed).toString();
    }

    return [prefix, adjective, emailOrName, dateString, numberString, suffix]
        .where((element) => element.isNotEmpty)
        .join(space)
        .toLowerCase();
  }

  /// Generate username for first and lastname
  String usernameFromName(
      {required String firstName,
      String lastName = '',
      List<String> adjectives = const [],
      bool hasNumbers = true,
      int numberSeed = 100}) {
    var names = [
      [lastName, firstName].join(' '),
      [firstName, lastName].join(' '),
      [firstName, lastName].join(),
      firstName,
      lastName
    ].where((element) => element.isNotEmpty).toList();

    String name = _getRandomElement(names);

    //${adjectives[ran_b]}${separator}${names[ran_a]}
    return makeUserName(name,
        adjectives: adjectives, withNumber: hasNumbers, numberSeed: numberSeed);
  }

  /// Generates a list of username for first and lastname

  /// Generates a list of username for first and lastname
  List<String> listOfUserName(String firstName,
      {String lastName = '',
      bool isadjectives = false,
      bool hasNumbers = true,
      int numberSeed = 100,
      int length = 1}) {
    var usernames = <String>[];
    for (var i = 0; i < length; i++) {
      usernames.add(usernameFromName(
        firstName: firstName,
        lastName: lastName,
        adjectives: isadjectives ? adjectives : [],
        hasNumbers: hasNumbers,
        numberSeed: numberSeed,
      ));
    }

    return usernames;
  }

  /// Returns unique username on each call generater Username
  String randomUserName({bool addSpace = true}) {
    String space = '_';
    if (!addSpace) {
      space = "";
    }
    var ranSuffix = _random.nextInt(100);
    //${adjectives[ran_b]}${separator}${names[ran_a]}
    return [_getRandomElement(adjectives), _getRandomElement(names), ranSuffix]
        .join(space)
        .toLowerCase();
  }

  /// Get a random element from the list given
  dynamic _getRandomElement(List<dynamic> list) {
    return list[(_random.nextDouble() * list.length).floor()];
  }
}
