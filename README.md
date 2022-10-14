<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

## Features

### use the following dart method directly in your code and speed up your app development

Validators

```dart
 .isNull //return bool check if the given value is null or not
 .isemail(); // return bool
 .isNum; //return bool check if the given string is numeric type or not
```

Formatters

```dart
.removeduplicates(); // remove duplicates from your list
 .ordinal();; // convert number into ordered form e.g 1st 2nd 55th 22th
 .isNum; //return bool check if the given string is numeric type or not
```

converter

From Epoch

```dart
    1665102617.epochToDate(); // return DateTime  like  2022-10-07 05:41:03.162
    1665102617.epochToTime();// 5:30 AM
   final date2 = DateTime(2011, 1, 15).weekOftheYearFromDate(); // 2nd week

   98.minToDuration(); // 1.6 hr
```

## Getting started

## Validators

```dart
final email = 'mashoodhussain100@gmail.com'.isemail(); // true
final email = "mashood100".isemail(); // false

    "1223ee2".isNum; //false
    bool isDouble = "122".isNum; // true
```

check is string value is number or not

```dart

 "1223ee2".isNum; //false
 "122".isNum; // true
```

## Formatters

```dart
   final test1 = 44.ordinal(); // 44th
   final test2 = 1.ordinal();// 1st

```

Remove Duplicates from List

```dart

    List myArray = ['x', 'w', 'x', 'y', 'o', 'x', 'y', 'y', 'r', 'a'];
    List unique = myArray.removeduplicates(); //[ x, w, y ,o, r, a ]
```

## Conversations

From Epoch

```dart
   final test1 = 1665102617.epochToDate(); // return DateTime  like  2022-10-07 05:41:03.162
   final time = 1665102617.epochToTime();// 5:30 AM
```

From DateTime

```dart
   final date1 = DateTime.now().weekOftheYearFromDate(); // return current week number of the year eg: 12

   final date2 = DateTime(2011, 1, 15).weekOftheYearFromDate(); // 2


```

```dart
   final week = 112398.minToDuration(); // weeks
   final week = 98.minToDuration(); // 1.6 hr
```

## Time Ago Stamps

From Epoch

```dart
       String myTimeago = DateTime.now().timeAgoSinceDateTime(dateInNumbers: true); // just now
```

From DateTime

```dart
    String timeagoInString = 1665192814.timeAgoSinceEpochDate(dateInNumbers: false); // return 12 days ago

```

Generate unique user names

```dart

  var generate = Generator();

  print(generate.randomUserName());

  // barley_harryy_1
  // set addspcae parameter false so it will generate username without spaces( _ )
  // by default its true
  print(generate.randomUserName(addSpace: false));
  // barleyharryy1
  print(generate.makeUserName('mashood'));
  // mashood_82

  print(generate.makeUserName('Mashood Hussain'));
  // mashood_Hussain_23
  print(generate.makeUserName('Mashood Hussain'));
  // mashoodHussain23
// set with number false to make usernames with number
  print(generate.makeUserName('John Doe', withNumber: false));
// mashood_Hussain

// you can also set prefix and sufffix so it will apperes on every username that you generates
  print(generate.makeUserName('Mashood Hussain',
      withNumber: false, prefix: 'developer', suffix: 'fultter'));
  // developer_mashood_hussain_flutter

  print(generate.makeUserName('mashoodh@example.com',
      date: DateTime.parse('2001-06-20')));
  // mashood_01

  print(
    generate.usernameFromName(
        firstName: 'mashood',
        lastName: 'hussain',
        adjectives: ['ready', 'happy']),
  );
  // doe_john_10_ready

  print(
    generate.usernameFromName(firstName: 'John', lastName: 'Doe'),
  );
  // doe_john_10
//set isadjectives true to get a username with adjective word
  print(
    generate.listOfUserName('Mashood Hussain', length: 4, isadjectives: true),
  );

  // [
  // 4_mashood_awsome,
  // 20_hussain_great,
  // 7_mashood_fast,
  // hussain_mashood_99
  // ]

// by default isadjectives is false
  print(
    generate.listOfUserName('Mashood Hussain', length: 4),
  );

  // [
  // 4_mashood,
  // 20_hussain,
  // 7_mashood,
  // hussain_mashood_99
  // ]
```

![Screenshot](images/ss1.png)
![Screenshot2](images/ss2.png)

## Additional information

For more info or contribution visit https://github.com/mashood100/dart_extend
