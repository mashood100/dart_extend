// ignore_for_file: library_private_types_in_public_api

import 'package:dart_extend/dart_extend.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var generator = Generator();
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Document Scanner Demo'),
          ),
          body: Column(
            children: [
              Text(generator.createCryptoRandomString()),
              Text(generator.randomNumber(2, 9).toString())
            ],
          )),
    );
  }
}
