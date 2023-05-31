import 'package:flutter/material.dart';

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
                  Expanded(
                    child: Container(
                      color: Color(0xFF111428),
                      margin: EdgeInsets.all(15),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Color(0xFF111428),
                      margin: EdgeInsets.all(15),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xFF111428),
                margin: EdgeInsets.all(15),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Color(0xFF111428),
                    margin: EdgeInsets.all(15),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xFF111428),
                    margin: EdgeInsets.all(15),
                  ),
                )
              ],
            ))
          ],
        ));
  }
}
