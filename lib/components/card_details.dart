import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({Key? key, required this.gender, required this.icon})
      : super(key: key);

  final String gender;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100.0,
          color: Colors.white,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
