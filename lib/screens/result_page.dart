import 'package:flutter/material.dart';

import '../constants.dart';
import '../components/custom_container.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CustomContainer(
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'NORMAL',
                      style: kResultTextStyle,
                    ),
                    Text(
                      "25",
                      style: kBMITextStyle,
                    ),
                    Text(
                      "You are good to go",
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    )
                  ],
                )),
          ),
          BottomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              label: 'RECALCULATE')
        ],
      ),
    );
  }
}
