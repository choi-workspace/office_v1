import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  const InputCard({super.key, required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF000000),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          textInputAction: TextInputAction.done,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
