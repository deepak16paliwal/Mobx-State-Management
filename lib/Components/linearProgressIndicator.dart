import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearIndicator extends StatelessWidget {
  final double width;
  final double lineHeight;
  final double percent;
  final Color backGroundColor;
  final Color progressColor;
  const LinearIndicator(this.width, this.lineHeight, this.percent, this.backGroundColor, this.progressColor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: width,
      lineHeight: lineHeight,
      percent: percent,
      backgroundColor: backGroundColor,
      progressColor: progressColor,
    );
  }
}
