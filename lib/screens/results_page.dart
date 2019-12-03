import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String resultInterpretation;

  ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.resultInterpretation,
  });

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
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomCenter,
                child: Text(
                  'YOUR RESULT',
                  style: kHeadLineTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kBodyTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      resultInterpretation,
                      style: kLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                text: 'RE-Calculate')
          ],
        ),
      ),
    );
  }
}
