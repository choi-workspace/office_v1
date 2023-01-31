import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mockups/constant.dart';
import 'package:mockups/utils/submit_button.dart';
import 'package:mockups/widgets/input_card.dart';

class FillInfo extends StatefulWidget {
  const FillInfo({super.key});

  @override
  State<FillInfo> createState() => _FillInfoState();
}

class _FillInfoState extends State<FillInfo> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController businessController = TextEditingController();

  final TextEditingController industryController = TextEditingController();

  final TextEditingController contactController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  int selectedvalue = 0;
  bool value = false;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    businessController.dispose();
    industryController.dispose();
    contactController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Fill in your information",
                style: tHeadingTextStyle,
              ),
              Container(
                padding: EdgeInsets.all(100),
                width: 722,
                decoration: BoxDecoration(
                  color: tWhite,
                ),
                child: Column(
                  children: [
                    InputCard(
                      label: "Full Name",
                      controller: nameController,
                    ),
                    InputCard(
                      label: "Name of Business (Optional)",
                      controller: nameController,
                    ),
                    Row(
                      children: [
                        Radio(
                            activeColor: Colors.black,
                            value: 1,
                            groupValue: selectedvalue,
                            onChanged: (value) => setState(
                                  () => selectedvalue = 1,
                                )),
                        Text(
                          "Sole Proprietor",
                          style: tSmallTextStyle,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Radio(
                            activeColor: Colors.black,
                            value: 2,
                            groupValue: selectedvalue,
                            onChanged: (value) => setState(
                                  () => selectedvalue = 2,
                                )),
                        Text(
                          "Corporation",
                          style: tSmallTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputCard(
                      label: "Industry",
                      controller: nameController,
                    ),
                    InputCard(
                      label: "Contact Number",
                      controller: nameController,
                    ),
                    InputCard(
                      label: "Email Address",
                      controller: nameController,
                    ),
                    InputCard(
                      label: "Create a Password",
                      controller: nameController,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: value,
                          onChanged: (value) =>
                              setState(() => this.value = value!),
                        ),
                        Text(
                          "I need a Leasing Contract",
                          style: tSmallTextStyle,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          tIconLogo,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: value,
                          onChanged: (value) =>
                              setState(() => this.value = value!),
                        ),
                        RichText(
                          text: TextSpan(
                            style: tSmallTextStyle,
                            children: [
                              TextSpan(text: "I agree to the"),
                              TextSpan(
                                  text: " Terms and Conditions*",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      openDialog();
                                    }),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          tIconLogo,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SubmitButton(
                      text: "Continue",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future openDialog() => showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            width: 705,
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Terms and Conditions",
                  style: tSubHeadingTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
                  style: tSmallTextStyle,
                ),
                SizedBox(
                  height: 40,
                ),
                SubmitButton(
                  text: "I Agree",
                  onTap: () => Navigator.of(context).pop,
                ),
              ],
            ),
          ),
        );
      });
}
