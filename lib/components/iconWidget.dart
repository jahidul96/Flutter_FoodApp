import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconWidget extends StatelessWidget {
  final Color backgroundcolor;
  final IconData icon;
  final Color iconColor;
  final double size;
  final double iconsize;
  final double length;

  const IconWidget({
    super.key,
    this.iconColor = const Color(0xFF756d54),
    this.backgroundcolor = const Color.fromARGB(255, 243, 232, 232),
    this.size = 40,
    required this.icon,
    required this.length,
    required this.iconsize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: length,
      height: length,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: backgroundcolor,
      ),
      child: Center(
        child: Icon(
          icon,
          size: iconsize,
          color: iconColor,
        ),
      ),
    );
  }
}
