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
    return Container(
      height: 1500,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: ((context, index) {
            return Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/image/food2.jpg"),
                            fit: BoxFit.cover)),
                  ),

                  // left content
                  Container(
                    height: 100,
                    width: 230,
                    // padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                    child: Column(children: [SliderCardContentWidget()]),
                  ),
                ],
              ),
            );
          })),
    );
  }

  Widget buildCard(int index) {
    return Container();
  }
}
