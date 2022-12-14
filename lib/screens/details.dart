// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_app/components/iconWidget.dart';
import 'package:flutter_test_app/components/topBackIcon.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});

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
              height: 250,
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
                  const IconWidget(
                    icon: Icons.chevron_left,
                    length: 40,
                    iconsize: 25,
                  ),
                  const IconWidget(
                    icon: Icons.search,
                    length: 40,
                    iconsize: 25,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
