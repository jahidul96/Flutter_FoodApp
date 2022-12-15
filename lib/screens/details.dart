// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_app/components/CardBottomContent.dart';
import 'package:flutter_test_app/components/TextWidget.dart';
import 'package:flutter_test_app/components/detailsFoodTopContent.dart';
import 'package:flutter_test_app/components/iconWidget.dart';
import 'package:flutter_test_app/components/reviewComp.dart';
import 'package:flutter_test_app/components/topBackIcon.dart';

class FoodDetails extends StatelessWidget {
  FoodDetails({super.key});
  double positionHeight = 350;
  double imgHeight = 250;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // image container
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: imgHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/food1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // topbackicon comp
          Positioned(
              left: 15,
              right: 15,
              top: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: const IconWidget(
                      icon: Icons.chevron_left,
                      length: 40,
                      iconsize: 25,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const IconWidget(
                    icon: Icons.search,
                    length: 40,
                    iconsize: 25,
                  ),
                ],
              )),

          // details content comp
          DetailsTopContent(),

          Positioned(
              left: 15,
              right: 15,
              top: positionHeight,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "Details",
                      fontWeight: FontWeight.bold,
                      size: 17,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make. typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ma",
                      style: TextStyle(height: 1.5),
                    ),
                  ],
                ),
              )),
        ],
      ),

      // bottom add comp
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 130,
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "+",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "0",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "-",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
                alignment: Alignment.center,
                width: 120,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextWidget(
                  text: "Add To Cart",
                  size: 15,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}
