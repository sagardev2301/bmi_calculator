import 'package:flutter/material.dart';

const bottomContainerHeight = 70.0;
const bottomContainerColour = Colors.redAccent;

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 5.0),
                height: bottomContainerHeight,
                color: bottomContainerColour,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
