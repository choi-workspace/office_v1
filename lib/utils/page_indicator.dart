import 'package:flutter/material.dart';
import 'package:mockups/constants/image_string.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/textstyle.dart';

class PageIndicator extends StatelessWidget {
  final Color colorText;
  final int sequence;
  final Color colorShape;
  final double width;
  const PageIndicator({
    super.key,
    required this.colorText,
    this.colorShape = Colors.white,
    required this.width, required this.sequence,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 722,
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: 15,
                left: 120,
                height: 10,
                width: width,
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProgressIndicator(
                    text: "Basic Information",
                    number: "1",
                    colorText: Colors.white,
                    colorShape: colorShape,
                  ),
                  ProgressIndicator(
                    text: "Basic Information",
                    number: "1",
                    colorText: Colors.white,
                    colorShape: colorShape,
                  ),
                  ProgressIndicator(
                    text: "Basic Information",
                    number: "1",
                    colorText: Colors.white,
                    colorShape: colorShape,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProgressIndicator extends StatelessWidget {
  final String text;
  final String number;
  final Color colorText;
  final Color colorShape;
  const ProgressIndicator({
    Key? key,
    required this.colorText,
    required this.text,
    required this.number,
    required this.colorShape,
  }) : super(key: key);
  
  get tSmallBlueTextStyle => null;
  
  get tDarkestBlue => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: tDarkestBlue,
            ),
          ),
          child: CircleAvatar(
            backgroundColor: colorShape,
            child: Text(
              number,
              style: tSmallTextStyle.copyWith(color: colorText),
            ),
          ),
        ),
        SizedBox(
          height: 9,
        ),
        Text(
          text,
          style: tSmallBlueTextStyle,
        ),
      ],
    );
  }
}
