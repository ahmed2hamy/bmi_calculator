import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  CustomIconButton({@required this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}