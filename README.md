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



## Getting started

How To Use:

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

## Additional information

For more info or contribution visit https://github.com/mashood100/dart_extend
