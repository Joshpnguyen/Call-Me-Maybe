import 'dart:math';
import 'package:flutter/material.dart';

class PredictorScreen extends StatefulWidget {
  const PredictorScreen({Key? key}) : super(key: key);

  @override
  _PredictorScreenState createState() => _PredictorScreenState();
}

class _PredictorScreenState extends State<PredictorScreen> {
  final prediction = Sayings();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      callMeMaybe(context),
      predictionButton(),
      Expanded(
          flex: 4,
          child: Text('${prediction.getSaying}',
              style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'TitilliumWeb',
                  color: Colors.grey[600])))
    ]);
  }

  Widget predictionButton() {
    return Expanded(
        flex: 2,
        child: Align(
          alignment: Alignment.center,
          child: GestureDetector(
              onTap: () {
                setState(() {
                  prediction.rollSaying();
                });
              },
              child: Text('Ask a question.. Tap for the answer.',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'TitilliumWeb',
                      fontStyle: FontStyle.italic))),
        ));
  }
}

// Gets the prediction saying
class Sayings {
  final Random random = Random();
  var listOfSayings = [
    'Yes, definitely.',
    'Try again.',
    'Unlikely, but possible.',
    'The future is uncertain.',
    'Not your lucky day.',
    'YES!!',
    'Possibly, but not today.',
    'Never in a million years.',
    'Nope.'
  ];
  var _saying = "Yes, definitely.";

  void rollSaying() {
    int randValue = random.nextInt(listOfSayings.length);
    _saying = listOfSayings[randValue];
  }

  String get getSaying => _saying;
}

// Widget for the 'Call Me.. Maybe?' line
Widget callMeMaybe(BuildContext context) {
  return Expanded(
      flex: 4,
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Text('Call Me.. Maybe?',
              style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'TitilliumWeb',
                  color: Colors.grey[600]))));
}
