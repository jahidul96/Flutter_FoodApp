import 'package:flutter/material.dart';
import 'package:flutter_test_app/components/SliderWidget.dart';
import 'package:flutter_test_app/components/TextWidget.dart';
import 'package:flutter_test_app/components/TopWidget.dart';
import 'package:flutter_test_app/components/_popularRest.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const TopWidget(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                const SliderWidget(),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 15),
                  alignment: Alignment.topLeft,
                  child: TextWidget(
                    text: "Popular",
                    size: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const PopularRestWidget()
              ],
            ),
          ))
        ],
      ),
    );
  }
}
