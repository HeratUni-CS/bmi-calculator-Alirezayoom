import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_container.dart';
import 'icon_content.dart';

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
                    onPressed: () {
                      print('male selected');
                    },
                    color: activeCardColor,
                    child: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                  CustomContainer(
                    onPressed: () {
                      print('female selected');
                    },
                    color: activeCardColor,
                    child: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
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
