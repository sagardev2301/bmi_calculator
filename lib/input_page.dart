import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'card_details.dart';

const bottomContainerHeight = 70.0;
const bottomContainerColour = Colors.redAccent;
const activeCardColour = Color(0xFF1C1C2D);
const inactiveCardColour = Color(0xFF1C1C1D);
const fontColour = Color(0xFF8D8E98);

enum Gender {
  male,
  female,
  others,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.others;
  int defaultHeight = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? inactiveCardColour
                        : activeCardColour,
                    cardChild: const CardDetails(
                      gender: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? inactiveCardColour
                        : activeCardColour,
                    cardChild: const CardDetails(
                      gender: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ReusableCard(
            onPress: null,
            colour: activeCardColour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'HEIGHT',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: fontColour,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      defaultHeight.toString(),
                      style: const TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'cm',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: fontColour,
                      ),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: const Color(0xFF8D8E98),
                    activeTrackColor: Colors.white,
                    thumbColor: const Color(0xFFEB1555),
                    overlayColor: const Color(0x29EB1555),
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 30.0),
                  ),
                  child: Slider(
                    value: defaultHeight.toDouble(),
                    max: 220.0,
                    divisions: 220,
                    onChanged: (double value) {
                      setState(() {
                        defaultHeight = value.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Expanded(
                  child: ReusableCard(
                    onPress: null,
                    colour: activeCardColour,
                    cardChild: null,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: null,
                    colour: activeCardColour,
                    cardChild: null,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5.0),
            height: bottomContainerHeight,
            color: bottomContainerColour,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
