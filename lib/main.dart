import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockups/constant.dart';
import 'package:mockups/features/create-account/basic_form.dart';
import 'package:mockups/features/create-account/leasing_contract.dart';
import 'package:mockups/features/create-account/location_plan_selection.dart';

import 'features/create-account/summary_info.dart';

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
      home: SummaryInfo(),
    );
  }
}
