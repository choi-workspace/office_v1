import 'package:flutter/material.dart';
import 'package:mockups/constant.dart';
import 'package:mockups/widgets/plan_card.dart';

class LocationPlanSelection extends StatelessWidget {
  const LocationPlanSelection({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: size.width / 12, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // virtual office
              Row(
                children: [
                  SizedBox(
                    width: size.width / 2.3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your virtual office will be located here!",
                          style: TextStyle(
                            fontSize: 90,
                            fontWeight: FontWeight.w600,
                            color: tDarkestGreen,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Bacoor Branch",
                          style: tSubHeadingTextStyle,
                        ),
                        Text(
                          "Fynn Boutique Hotel, Bacoor, Cavite",
                          style: tSubHeadingTextStyle,
                        ),
                        Text(
                          "4102 Bacoor, Philippines",
                          style: tSubHeadingTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    tLocation,
                    width: 750,
                    height: 750,
                  ),
                ],
              ),

              SizedBox(
                height: 147,
              ),

              // select plan
              Text(
                "Select the plan that's right for you",
                style: tHeadingTextStyle,
              ),
              SizedBox(
                height: 80,
              ),

              // plan card
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PlanCard(
                    periodic: "Quarterly",
                    month: "3",
                    amountCost: "4,888.00",
                  ),
                  PlanCard(
                    periodic: "Semi-Annual",
                    month: "6",
                    amountCost: "8,888.00",
                    isSaved: true,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      PlanCard(
                        periodic: "Quarterly",
                        month: "12",
                        amountCost: "18,888.00",
                        isSaved: true,
                      ),
                      Positioned(
                        top: -20,
                        right: -20,
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: tDarkestGreen,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            "Best Value!".toUpperCase(),
                            style: tRegularBoldTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
