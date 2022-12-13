import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextWidget extends StatelessWidget {
  final String text;
  double size;
  Color? color;
  FontWeight fontWeight;
  TextOverflow overflow;
  double height;

  TextWidget(
      {super.key,
      required this.text,
      this.size = 20,
      this.height = 1.2,
      this.overflow = TextOverflow.ellipsis,
      this.fontWeight = FontWeight.w400});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
          color: color, fontSize: size, fontWeight: fontWeight, height: height),
    );
  }
}
