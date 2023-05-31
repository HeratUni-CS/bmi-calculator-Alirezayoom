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
      body: Container(
          color: Color(0xFF1D1E33),
          width: 170,
          height: 200,
          margin: EdgeInsets.all(15)),
    );
  }
}
