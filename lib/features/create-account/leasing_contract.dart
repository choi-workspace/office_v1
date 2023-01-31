import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockups/constant.dart';
import 'package:mockups/utils/page_indicator.dart';
import 'package:mockups/utils/submit_button.dart';

class LeasingContract extends StatelessWidget {
  const LeasingContract({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                "Leasing Contract",
                style: tHeadingTextStyle,
              ),
              PageIndicator(currentValue: 1),
              Container(
                color: Colors.white,
                width: 705,
                padding: EdgeInsets.all(80.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Leasing Contract",
                        style: tSubHeadingBoldTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: tSmallTextStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      title: Text(
                        "Download the Leasing Contract",
                        style: tSmallTextStyle.copyWith(
                          color: tDarkestGreen,
                        ),
                      ),
                      leading: Image.asset(
                        tDownloadLogo,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "To agree to the Leasing Contract, place your signature in the empty field below or upload a photo of your signature.",
                      style: tSmallTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      maxLines: 2,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Upload a photo of your signature",
                          style: tSmallTextStyle,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          tInfoLogo,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Upload Files".toUpperCase(),
                            style: GoogleFonts.figtree(
                              fontSize: 13,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              backgroundColor: tGray,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "No file attached yet.",
                          style: tSmallTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Text(
                          "Upload 2 valid government IDs",
                          style: tSmallTextStyle,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          tInfoLogo,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Upload Files".toUpperCase(),
                            style: GoogleFonts.figtree(
                              fontSize: 13,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              backgroundColor: tGray,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "No file attached yet.",
                          style: tSmallTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SubmitButton(text: "Continue", onTap: () {}),
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
