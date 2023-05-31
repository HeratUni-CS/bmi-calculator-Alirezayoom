import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({required this.color, this.child});

  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
        child: child,
      ),
    );
  }
}
