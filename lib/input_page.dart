import 'package:flutter/material.dart';

const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF111428);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI calculator'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  CustomContainer(
                    color: activeCardColor,
                  ),
                  CustomContainer(
                    color: activeCardColor,
                  ),
                ],
              ),
            ),
            CustomContainer(
              color: activeCardColor,
            ),
            Expanded(
              child: Row(
                children: [
                  CustomContainer(
                    color: activeCardColor,
                  ),
                  CustomContainer(
                    color: activeCardColor,
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
            )
          ],
        ));
  }
}

class CustomContainer extends StatelessWidget {
  CustomContainer({required this.color});

  Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
      ),
    );
  }
}
