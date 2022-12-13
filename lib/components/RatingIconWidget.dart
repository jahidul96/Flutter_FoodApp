import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RatingIconWidget extends StatelessWidget {
  const RatingIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Wrap(
          children: List.generate(
              5,
              (index) => const Icon(
                    Icons.star,
                    size: 14,
                    color: Colors.orange,
                  )),
        )
      ]),
    );
  }
}
