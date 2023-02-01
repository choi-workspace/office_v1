import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockups/constants/colors.dart';
import 'package:mockups/constants/image_string.dart';
import 'package:mockups/view/pages/create-account/basic_form.dart';
import 'package:mockups/view/pages/create-account/leasing_contract.dart';
import 'package:mockups/view/pages/create-account/location_plan_selection.dart';

import 'view/pages/create-account/summary_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mock up",
      theme: ThemeData(
        textTheme: GoogleFonts.figtreeTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: tBeige,
      ),
      home: LeasingContract(),
    );
  }
}
