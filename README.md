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

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Validators


```dart
final email = 'mashoodhussain100@gmail.com'.isemail; // true
final email = 'mashood100".isemail'; // false
```


to `/example` folder.

## Formatters


```dart
  final test1 = 44.ordinal(); // 44th
   final test2 = 1.ordinal();// 1st
```

## Conversations

From Epoch
```dart
   final test1 = 1665102617.epochToDate(); // return DateTime  like  2022-10-07 05:41:03.162
   final time = 1665102617.epochToTime();// 5:30 AM 
final week = DateTime.now().weekOftheYearFromDate();
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

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
