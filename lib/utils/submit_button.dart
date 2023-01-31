import 'package:flutter/material.dart';

import '../constant.dart';

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

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text.toUpperCase(),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: tOrange,
        padding: EdgeInsets.symmetric(vertical: 20),
      ),
    );
  }
}
