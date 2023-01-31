import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockups/constant.dart';
import 'package:mockups/utils/submit_button.dart';

class SummaryInfo extends StatelessWidget {
  const SummaryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Summary of Information",
                style: tHeadingTextStyle,
              ),
              Container(
                padding: EdgeInsets.all(80),
                width: 705,
                color: Colors.white,
                child: Column(
                  children: [
                    Contact_Information(
                      text: "Full Name",
                      identity: "Full Name",
                      onTap: () {},
                    ),
                    SizedBox(height: 20),
                    Contact_Information(
                      text: "Name of Business",
                      identity: "Name of Business",
                      onTap: () {},
                    ),
                    SizedBox(height: 20),
                    Contact_Information(
                      text: "Type of Business",
                      identity: "Type of Business",
                      onTap: () {},
                    ),
                    SizedBox(height: 20),
                    Contact_Information(
                      text: "Industry",
                      identity: "Industry",
                      onTap: () {},
                    ),
                    SizedBox(height: 20),
                    Contact_Information(
                      text: "Contact Number",
                      identity: "Contact Number",
                      onTap: () {},
                    ),
                    SizedBox(height: 20),
                    Contact_Information(
                      text: "Email Address",
                      identity: "Email Address",
                      onTap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40.0),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Total_Amount(
                      text: "Access",
                      identity: "3 Months",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Total_Amount(
                      text: "Amount due",
                      identity: "PHP 4,888.00",
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SubmitButton(text: "Proceed to Payment", onTap: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Total_Amount extends StatelessWidget {
  final String text;
  final String identity;
  const Total_Amount({
    Key? key,
    required this.text,
    required this.identity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 150,
          child: Text(
            text,
            style: tSmallTextStyle,
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Text(
          identity,
          style: tSmallBoldTextStyle,
        ),
      ],
    );
  }
}

class Contact_Information extends StatelessWidget {
  final String text;
  final String identity;
  final VoidCallback onTap;
  const Contact_Information({
    Key? key,
    required this.text,
    required this.onTap,
    required this.identity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 150,
          child: Text(
            text,
            style: tSmallTextStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: SizedBox(
            width: 131,
            child: Text(
              identity,
              style: tSmallBoldTextStyle,
            ),
          ),
        ),
        InkWell(
          onTap: onTap,
          child: DottedBorder(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            borderType: BorderType.RRect,
            radius: Radius.circular(15),
            child: Text(
              "Edit".toUpperCase(),
              style: GoogleFonts.figtree(
                fontSize: 9,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
