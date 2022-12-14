// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_app/components/CardBottomContent.dart';
import 'package:flutter_test_app/components/TextWidget.dart';
import 'package:flutter_test_app/components/reviewComp.dart';

class DetailsTopContent extends StatelessWidget {
  const DetailsTopContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: 230,
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
        height: 500,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: TextWidget(
              text: "FoodName",
              fontWeight: FontWeight.w600,
              size: 17,
            )),
            Container(
              child: SizedBox(
                width: 200,
                child: ReviewCompWidget(),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              child: SizedBox(
                width: 250,
                child: CardBottomContent(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
