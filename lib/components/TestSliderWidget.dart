import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TestSliderWidget extends StatefulWidget {
  const TestSliderWidget({super.key});

  @override
  State<TestSliderWidget> createState() => _TestSliderWidgetState();
}

class _TestSliderWidgetState extends State<TestSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.blue,
      child: PageView.builder(
          itemCount: 4,
          itemBuilder: (context, position) {
            return buildSlider(position);
          }),
    );
  }

  Widget buildSlider(int index) {
    return Stack(
      children: [
        Container(
            height: 200,
            margin: EdgeInsets.only(left: 30, right: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage("assets/image/food2.jpg"),
                fit: BoxFit.cover,
              ),
            )),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 200,
            margin: EdgeInsets.only(left: 50, right: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
