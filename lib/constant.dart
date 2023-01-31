import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// constant for colors
const tDarkestGreen = Color(0xFF02556D);
const tOrange = Color(0xFFEE8C34);
const tBlack = Color(0xFF0F0C0C);
const tWhite = Color(0xFFFFFFFF);
const tBeige = Color(0xFFF9F2E1);

// constant for image string
const String tLocation = "assets/images/location.png";

// constant for icon string
const String tIconLogo = "assets/icons/info.png";

// constant for textStyle
TextStyle tHeadingTextStyle = GoogleFonts.figtree(
  color: tBlack,
  fontSize: 68,
  fontWeight: FontWeight.bold,
);

// constant textTheme
TextStyle tSubHeadingTextStyle = GoogleFonts.figtree(
  color: Color(0xFF000000),
  fontSize: 30,
);

TextStyle tPlanMoneyTextStyle = GoogleFonts.figtree(
  color: tDarkestGreen,
  fontSize: 45,
  fontWeight: FontWeight.bold,
);

TextStyle tSmallTextStyle = GoogleFonts.figtree(
  fontSize: 16,
  color: Color(0xFF000000),
);

TextStyle tRegularTextStyle = GoogleFonts.figtree(
  fontSize: 20,
  color: Color(0xFF000000),
);

TextStyle tRegularBoldTextStyle = GoogleFonts.figtree(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: tWhite,
);
