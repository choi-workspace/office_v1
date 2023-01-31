import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockups/constant.dart';

class PlanCard extends StatelessWidget {
  final String periodic;
  final String month;
  final String amountCost;
  final bool isSaved;
  const PlanCard({
    super.key,
    required this.periodic,
    required this.month,
    required this.amountCost,
    this.isSaved = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: tWhite,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
          )),
      height: 523,
      width: 413,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                periodic.toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                "${month}-Month access",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Text("PHP"),
                  style: tRegularTextStyle,
                ),
                WidgetSpan(
                  child: SizedBox(
                    width: 10,
                  ),
                ),
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Text(
                    amountCost,
                    style: tPlanMoneyTextStyle,
                  ),
                ),
              ],
            ),
          ),
          isSaved ? saveAmount("XXX") : Container(),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Select Plan".toUpperCase(),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: tOrange,
              padding: EdgeInsets.all(20),
            ),
          ),
        ],
      ),
    );
  }

  Widget saveAmount(String amount) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(10),
      padding: EdgeInsets.all(8),
      child: Text(
        "Save PHP XXX".toUpperCase(),
        style: tRegularTextStyle,
      ),
    );
  }
}
