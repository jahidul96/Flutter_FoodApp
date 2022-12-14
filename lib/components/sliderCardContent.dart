import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/components/CardBottomContent.dart';
import 'package:flutter_test_app/components/RatingIconWidget.dart';
import 'package:flutter_test_app/components/TextWidget.dart';

class SliderCardContentWidget extends StatelessWidget {
  const SliderCardContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: TextWidget(
              text: "ProductName",
              size: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const RatingIconWidget(),
                TextWidget(
                  text: "4.5",
                  size: 12,
                ),
                TextWidget(
                  text: "10 order",
                  size: 12,
                )
              ],
            ),
          ),
          const CardBottomContent(),
        ],
      ),
    );
  }
}
