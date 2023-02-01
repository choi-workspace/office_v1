import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/image_string.dart';

class SubmitButton extends StatelessWidget {
  final double horizontal, vertical;
  final String text;
  final VoidCallback onTap;
  const SubmitButton({
    super.key,
    required this.text,
    required this.onTap,
    this.horizontal = 220,
    this.vertical = 20,
  });
  
  get tOrange => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black,
          offset: Offset(0, 5),
        ),
      ], borderRadius: BorderRadius.circular(25)),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          text.toUpperCase(),
          style: GoogleFonts.figtree(
            fontSize: 21,
          ),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(
              color: Colors.black,
            ),
          ),
          backgroundColor: tOrange,
          padding: EdgeInsets.symmetric(vertical: 20),
        ),
      ),
    );
  }
}
