import 'package:flutter/material.dart';
import 'package:flutter_test_app/screens/home.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageWidget(),
    );
  }
}
