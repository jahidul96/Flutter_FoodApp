// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopBackIconComp extends StatelessWidget {
  const TopBackIconComp({super.key});

  @override
  Widget build(BuildContext context) {
    return // top icon container
        Positioned(
            left: 20,
            right: 20,
            top: 50,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    // ignore: prefer_const_constructors
                    child: Center(child: Icon(Icons.chevron_left)),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    // ignore: prefer_const_constructors
                    child: Center(child: Icon(Icons.search)),
                  ),
                ],
              ),
            ));
  }
}
