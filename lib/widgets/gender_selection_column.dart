import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';



class GenderSelectionColumn extends StatelessWidget {
  final IconData genderIcon;
  final String text;

  GenderSelectionColumn({@required this.genderIcon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 100,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          '$text',
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
