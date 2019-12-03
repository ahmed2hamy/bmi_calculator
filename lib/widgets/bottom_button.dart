import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String text;

  BottomButton({@required this.onTap, @required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: kBottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        color: kBottomContainerColor,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            text,
            style: kButtonTextStyle,
          ),
        )),
      ),
    );
  }
}
