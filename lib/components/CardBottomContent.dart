// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_app/components/TextWidget.dart';

class CardBottomContent extends StatelessWidget {
  const CardBottomContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.location_city,
                size: 15,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: TextWidget(
                  text: "ctg",
                  size: 12,
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.lock_clock,
                size: 15,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: TextWidget(
                  text: "30mins",
                  size: 12,
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.hot_tub,
                size: 15,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: TextWidget(
                  text: "Hot",
                  size: 12,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
