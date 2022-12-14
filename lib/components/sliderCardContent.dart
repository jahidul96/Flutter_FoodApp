import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/components/CardBottomContent.dart';
import 'package:flutter_test_app/components/RatingIconWidget.dart';
import 'package:flutter_test_app/components/TextWidget.dart';
import 'package:flutter_test_app/components/reviewComp.dart';

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
          const ReviewCompWidget(),
          const CardBottomContent(),
        ],
      ),
    );
  }
}
