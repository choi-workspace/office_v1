import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockups/constant.dart';
import 'package:mockups/screens/fill_info.dart';
import 'package:mockups/screens/location_plan_selection.dart';

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
        textTheme: GoogleFonts.figtreeTextTheme(),
        scaffoldBackgroundColor: tBeige,
      ),
      home: FillInfo(),
    );
  }
}
