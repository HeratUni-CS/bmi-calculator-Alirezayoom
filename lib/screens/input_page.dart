import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/custom_container.dart';
import '../components/icon_content.dart';
import '../constants.dart';
import 'result_page.dart';
import '../components/bottom_button.dart';
import '../components/round_icon_button.dart';

enum Gender {
  male,
  female,
}

int height = 175;
int weight = 70;
int age = 20;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

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
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: (selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor),
                    child: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                  CustomContainer(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: (selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor),
                    child: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ],
              ),
            ),
            CustomContainer(
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kLabelStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                          trackHeight: 1,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 20,
                          ),
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xFF888993),
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color.fromARGB(30, 235, 21, 85),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30)),
                      child: Slider(
                          value: height.toDouble(),
                          onChanged: (double value) {
                            setState(() {
                              height = value.round();
                            });
                          },
                          min: 120,
                          max: 220),
                    )
                  ],
                )),
            Expanded(
              child: Row(
                children: [
                  CustomContainer(
                      color: kActiveCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLabelStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                iconData: Icons.remove,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                iconData: Icons.add,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      )),
                  CustomContainer(
                      color: kActiveCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kLabelStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                iconData: Icons.remove,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                iconData: Icons.add,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      )),
                ],
              ),
            ),
            BottomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ResultPage(
                      result: 'Normal',
                      bmi: '24',
                      interpretation: 'You are good to go',
                    );
                  }),
                );
              },
              label: 'CALCULATE YOUR BMI',
            ),
          ],
        ));
  }
}
