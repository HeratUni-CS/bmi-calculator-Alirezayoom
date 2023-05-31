import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String label;

  IconContent({required this.iconData, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconData,
          size: 72,
          color: Color(0xFF868892),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF868892),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
