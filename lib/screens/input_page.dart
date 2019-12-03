import 'package:bmi_calculator/claculator_brain.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import '../widgets/bottom_button.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/gender_selection_column.dart';
import '../widgets/reusable_card.dart';

enum gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
//  Color maleCardColor = kInactiveCardColor;
//  Color femaleCardColor = kInactiveCardColor;
//
//
//  void updateUI(gender selectedGender){
//    if (selectedGender == gender.male){
//      if (maleCardColor == kInactiveCardColor){
//        maleCardColor = kActiveCardColor;
//        femaleCardColor = kInactiveCardColor;
//      }else
//        maleCardColor = kInactiveCardColor;
//    }
//
//    if (selectedGender == gender.female){
//      if (femaleCardColor == kInactiveCardColor){
//        femaleCardColor = kActiveCardColor;
//        maleCardColor = kInactiveCardColor;
//      }else
//        femaleCardColor = kInactiveCardColor;
//    }
//  }

  gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        elevation: 20,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedGender = gender.male;
                        });
                      },
                      color: selectedGender == gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: GenderSelectionColumn(
                        genderIcon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedGender = gender.female;
                        });
                      },
                      color: selectedGender == gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: GenderSelectionColumn(
                        genderIcon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xff6F717F),
                        thumbColor: Color(0xffEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              CustomIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    weight < 160 ? weight++ : weight = 160;
                                  });
                                },
                              ),
                              CustomIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    weight > 40 ? weight-- : weight = 40;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              CustomIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    age < 100 ? age++ : age = 100;
                                  });
                                },
                              ),
                              CustomIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    age > 16 ? age-- : age = 16;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            bmiResult: calc.calculateBMI(),
                            resultText: calc.getResult(),
                            resultInterpretation: calc.getInterpretation(),
                          )),
                );
              },
              text: 'Calculate Your BMI',
            ),
          ],
        ),
      ),
    );
  }
}
