import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCardScreen extends StatefulWidget {
  const BusinessCardScreen({Key? key}) : super(key: key);

  @override
  _BusinessCardScreenState createState() => _BusinessCardScreenState();
}

class _BusinessCardScreenState extends State<BusinessCardScreen> {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(
            flex: 2,
          ),
          Expanded(flex: 9, child: Image.asset('assets/profile_pic.JPG')),
          Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text('Josh Nguyen',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'TitilliumWeb',
                      fontWeight: FontWeight.w700,
                    )),
              )),
          Expanded(
              flex: 2,
              child: Align(
                  alignment: Alignment.center,
                  child: Text('Developer Guy',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'TitilliumWeb',
                          color: Colors.grey[800],
                          decoration: TextDecoration.underline)))),
          Expanded(
              flex: 2,
              child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                      onTap: () => launch('sms:5555555555'),
                      child: Text('(555) 555-5555',
                          style: TextStyle(
                              fontSize: 16, fontFamily: 'TitilliumWeb'))))),
          Expanded(flex: 2, child: websiteRow()),
          expandedOrientation(orientation)
        ],
      ),
    );
  }
}

// widget for the row containing the website and email
Widget websiteRow() {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex: 18,
          child: Align(
              alignment: Alignment.center,
              child: GestureDetector(
                  onTap: () => launch('https://github.com/Joshpnguyen'),
                  child: Text(
                    'github.com/joshpnguyen',
                    style: TextStyle(fontSize: 14, fontFamily: 'TitilliumWeb'),
                  ))),
        ),
        Expanded(
            flex: 18,
            child: Align(
                alignment: Alignment.center,
                child: Text('nguyjosh@gmail.com',
                    style:
                        TextStyle(fontSize: 14, fontFamily: 'TitilliumWeb')))),
      ]);
}

// adjust the expanded box at bottom of screen based on orientation
Widget expandedOrientation(Orientation orientation) {
  return orientation == Orientation.portrait
      ? Expanded(flex: 18, child: Container())
      : Expanded(flex: 1, child: Container());
}
