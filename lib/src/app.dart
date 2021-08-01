import 'package:flutter/material.dart';
import 'package:call_me_maybe/src_export.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call Me Maybe',
      theme: ThemeData(
          primarySwatch: Colors.green, accentColor: Colors.greenAccent[700]),
      home: MyHomePage(title: 'Call Me Maybe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // AppBar tab titles
  var tabs = [Icon(Icons.face), Icon(Icons.article), Icon(Icons.preview)];

  //Screens for each tab
  final screens = [BusinessCardScreen(), ResumeScreen(), PredictorScreen()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title:
                  Align(alignment: Alignment.center, child: Text(widget.title)),
              bottom: TabBar(tabs: tabs),
            ),
            body: TabBarView(children: screens)));
  }
}
