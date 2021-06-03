import 'package:flutter/material.dart';

class CornerRoundedButton extends StatelessWidget {
  final double marginHorizontal;
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final double fontSize;
  const CornerRoundedButton(
      this.marginHorizontal,
      this.backgroundColor,
      this.text,
      this.textColor,
      this.fontSize,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(
          horizontal: marginHorizontal),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: backgroundColor),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color:textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
