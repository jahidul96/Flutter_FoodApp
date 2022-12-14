// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_app/components/RatingIconWidget.dart';
import 'package:flutter_test_app/components/TextWidget.dart';
import 'package:flutter_test_app/components/sliderCardContent.dart';

class PopularRestWidget extends StatelessWidget {
  const PopularRestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 14,
        itemBuilder: ((context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: const DecorationImage(
                          image: AssetImage("assets/image/food2.jpg"),
                          fit: BoxFit.cover)),
                ),

                // left content
                Expanded(
                  child: Container(
                    height: 100,
                    alignment: Alignment.topLeft,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Column(children: [SliderCardContentWidget()]),
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
