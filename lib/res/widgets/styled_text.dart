import 'package:flutter/material.dart';
import 'package:mvvm_app/res/constants/color_constants.dart';

class StyledText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  const StyledText(
      {super.key,
      required this.text,
      this.fontWeight = FontWeight.w300,
      this.fontSize = 16.0,
      this.color = ColorConstants.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: fontWeight, fontSize: fontSize, color: color),
    );
  }
}
