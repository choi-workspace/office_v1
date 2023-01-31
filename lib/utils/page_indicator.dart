import 'package:flutter/material.dart';
import 'package:mockups/constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  final int currentValue;
  const PageIndicator({super.key, required this.currentValue});

  Color getColorShape() {
    if (currentValue == 0) {
      return tDarkestBlue;
    } else if (currentValue == 1) {
      return tDarkestBlue;
    } else if (currentValue == 2) {
      return tDarkestBlue;
    } else {
      return Colors.white;
    }
  }

  Color getColorText() {
    if (currentValue != 0) {
      return tDarkestBlue;
    } else {
      return Colors.white;
    }
  }

  double getWidth() {
    if (currentValue == 0) {
      return 0;
    } else if (currentValue == 1) {
      return 250;
    } else {
      return 500;
    }
  }

  Widget LineBar(int currentValue) {
    return Container(
      height: 10,
      width: getWidth(),
      color: tDarkestBlue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 722,
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: 20,
                left: 100,
                child: LineBar(currentValue),
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 95.0),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 500),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: getColorShape(),
                              ),
                              child: Center(
                                child: Text(
                                  "${index + 1}",
                                  style: TextStyle(
                                    color: getColorText(),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          );
                        })),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 9,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Basic Information",
                style: tSmallBlueTextStyle,
              ),
              Text(
                "Uploading Of Documents",
                style: tSmallBlueTextStyle,
              ),
              Text(
                "Payment Processing",
                style: tSmallBlueTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
