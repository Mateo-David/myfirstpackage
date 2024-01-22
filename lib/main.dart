import 'package:flutter/material.dart';
import 'package:myfirstpackage/first.dart';
import 'package:myfirstpackage/home.dart';
import 'package:myfirstpackage/tesing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Testing());
  }
}
