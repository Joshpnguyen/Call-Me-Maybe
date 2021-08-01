import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          nameHeader(),
          jobEntry(),
          jobEntry(),
          jobEntry(),
          jobEntry(),
          jobEntry(),
          jobEntry(),
          jobEntry(),
          jobEntry(),
          jobEntry(),
        ],
      ),
    );
  }
}

Widget nameHeader() {
  return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 110),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Align(
          alignment: Alignment.bottomLeft,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Josh Nguyen',
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'TitilliumWeb',
                    fontWeight: FontWeight.w600)),
            Text(
                'nguyjosh@gmail.com\n'
                'https://github.com/joshpnguyen',
                style: TextStyle(
                  fontFamily: 'TitilliumWeb',
                  height: 1.2,
                ))
          ]),
        ),
      ));
}

Widget jobEntry() {
  return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 100),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Software Engineer Intern',
                style: TextStyle(
                    fontFamily: 'TitilliumWeb', fontWeight: FontWeight.w600)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              subHeadlineText('Real Company, LLC'),
              subHeadlineText('2019-Present'),
              subHeadlineText('Houston, TX'),
            ]),
            Text(
                'Lorem ipsum dolor sit amet, varius laoreet nibh. Suspendisse convallis, metus in ultricies accumsan, turpis velit venenatis risus, sed hendrerit augue purus sed mauris.',
                style: TextStyle(
                  fontFamily: 'TitilliumWeb',
                  height: 1.1,
                ))
          ],
        ),
      ));
}

// Return the text and styling for the subheadline text for each entry
Widget subHeadlineText(String text) {
  return Text(text,
      style: TextStyle(
        fontFamily: 'TitilliumWeb',
        height: 1.1,
        fontStyle: FontStyle.italic,
      ));
}
