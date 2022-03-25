import 'package:flutter/material.dart';
import 'package:project_flutter_pemula_dicoding/intro.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Apps',
      theme: ThemeData(),
      home: const IntroDoctor(),
      //  IntroDoctor(),
    );
  }
}
