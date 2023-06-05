import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  void Function() onPressed;
  String label;

  BottomButton({required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 70,
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        child: Center(
          child: Text(
            label,
            style: kLargeButtonStyle,
          ),
        ),
      ),
    );
  }
}
