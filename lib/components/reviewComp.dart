import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_app/components/RatingIconWidget.dart';
import 'package:flutter_test_app/components/TextWidget.dart';

class ReviewCompWidget extends StatelessWidget {
  const ReviewCompWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
