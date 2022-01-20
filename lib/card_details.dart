import 'package:flutter/material.dart';

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
          style: const TextStyle(
            fontSize: 20.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
