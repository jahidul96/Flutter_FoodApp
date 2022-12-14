import 'package:flutter/material.dart';
import 'package:flutter_test_app/screens/details.dart';
import 'package:flutter_test_app/screens/home.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodDetails(),
    );
  }
}


 //pages
//  HomePageWidget()