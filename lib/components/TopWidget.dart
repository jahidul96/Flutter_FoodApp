// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test_app/components/TextWidget.dart';
import 'package:flutter_test_app/screens/register.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 221, 224, 226),
      child: Container(
        margin: const EdgeInsets.only(top: 40, bottom: 10, left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TextWidget(
                  text: "Jahidul",
                  size: 17,
                  fontWeight: FontWeight.bold,
                ),
                TextWidget(
                  text: "address",
                  size: 15,
                  height: 1.3,
                )
              ],
            ),
            InkWell(
              child: const Icon(
                Icons.person,
                size: 30,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
