import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// constant for colors
const tDarkestGreen = Color(0xFF02556D);
const tDarkestBlue = Color(0xFF004368);
const tOrange = Color(0xFFEE8C34);
const tBlack = Color(0xFF0F0C0C);
const tWhite = Color(0xFFFFFFFF);
const tBeige = Color(0xFFF9F2E1);
const tGray = Color(0xFFA9A9A9);

// constant for image string
const String tLocation = "assets/images/location.png";

// constant for icon string
const String tInfoLogo = "assets/icons/info.png";
const String tDownloadLogo = "assets/icons/download.png";

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

TextStyle tSubHeadingBoldTextStyle = GoogleFonts.figtree(
  color: Color(0xFF000000),
  fontSize: 30,
  fontWeight: FontWeight.bold,
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

TextStyle tSmallBlueTextStyle = GoogleFonts.figtree(
  fontSize: 16,
  color: tDarkestBlue,
  fontWeight: FontWeight.bold,
);

TextStyle tSmallBoldTextStyle = GoogleFonts.figtree(
  fontSize: 16,
  color: Color(0xFF000000),
  fontWeight: FontWeight.bold,
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
