// @dart=2.12
import 'package:flutter/material.dart';
import 'package:restaurant_roulette/fifth_page.dart';
import 'package:restaurant_roulette/front_page.dart';
import 'package:restaurant_roulette/second_page.dart';
import 'package:restaurant_roulette/third_page.dart';

import 'fourth_page.dart';

// flutter run --no-sound-null-safety
void main() {
  //runApp(const MyApp());
  runApp(
    MaterialApp(
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => AppFrontPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => AppSecondPage(),
        // When navigating to the "/third" route, build the ThirdScreen widget.
        '/third': (context) => ThirdPage(),
        // When navigating to the "/fourth" route, build the FourthScreen widget.
        '/fourth': (context) => FourthPage(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Roulette',
      theme: ThemeData(
        // Color should switch depending on the colors of the univeristy
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: ''),

    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: AppFrontPage()
        //body: FifthPage()
    );
  }
}
