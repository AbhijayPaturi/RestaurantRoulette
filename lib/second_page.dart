import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:restaurant_roulette/third_page.dart';

String selectedValue = "";
int num = 0;

class AppSecondPage extends StatefulWidget {
  methodRestaurantName() => createState().getRestaurantName();

  @override
  _AppSecondPageState createState() => _AppSecondPageState();
}

class _AppSecondPageState extends State<AppSecondPage> {
  final wheelItems = <String> [
    "Chick-Fil-A",
    "Cava",
    "Blaze",
    "Pasta Place",
    "Tutor",
    "Taco Bell",
  ];

  String getRestaurantName () {
    return wheelItems[num];
  }

  StreamController<int> selected = StreamController<int>();

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: GestureDetector(
          onTap: () {
            setState(() {
              num = Random().nextInt(wheelItems.length);
              selected.add(num);
              print(num);
            });
          },
            child: SafeArea(
                child: Column(
                    children: [
                      Row(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.32,
                              //padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
                              //margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                        if (states.contains(
                                            MaterialState.pressed))
                                          return Colors.black45;
                                        return Colors.white;
                                      },
                                    ),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                35.0),
                                            side: BorderSide(
                                                color: Colors.black)
                                        )
                                    )
                                ),
                                child: Text('Go Back',
                                    style: TextStyle(fontSize: MediaQuery
                                        .of(context)
                                        .size
                                        .height * 0.04,
                                        color: Colors.red,
                                        fontFamily: "LittleComet")),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ] // children for Row
                      ),
                      Container(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          //color: Colors.white,
                          child: Text("Spinning . . .",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: MediaQuery.of(context).size.height * 0.06,
                                fontFamily: "LittleComet",
                              )
                          )
                      ),

                      Container(
                        alignment: Alignment.topCenter,
                        margin: const EdgeInsets.only(top: 0.0),
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: MediaQuery.of(context).size.width,
                        child: FortuneWheel(
                          selected: selected.stream,
                          animateFirst: false,
                          //selected: selected,
                          // do not let the user drag/interact with the fortune wheel
                          physics: NoPanPhysics(
                            //duration: Duration(seconds: 1),
                            //curve: Curves.decelerate,
                          ),
                          onFling: () {
                            //selected.add(Random().nextInt(wheelItems.length - 1));
                            //print(selected.stream.listen((value) {print('Value from controller: $value');}));
                          },
                          onAnimationStart: () {
                          },
                          onAnimationEnd: () {
                            /*
                            Container(
                              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
                              height: 50,
                              width: 50,
                              color: Colors.black,
                              child: Text("Hi"),
                            );*/
                            //dispose();
                            //selected.stream.listen((value) {print('Value from controller: $value');});
                            // change to push once finding out how to store value
                            // selected by the fortune wheel
                            //Navigator.pop(context);
                            /*selected.stream.listen((event) {
                            selectedValue = "Controller Value: $event";
                            //print("Controller Value: $event");
                          });*/
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => ThirdPage()));
                            //selected.close();
                            /*StreamSubscription<int> streamSubscription =
                            selected.stream.listen((value) {
                              print('Value from controller: $value');
                            });
                            selected.close();
                            streamSubscription.cancel();
                            print(streamSubscription);*/

                          },
                          indicators: <FortuneIndicator>[
                            FortuneIndicator(
                              alignment: Alignment.topCenter,
                              // <-- changing the position of the indicator
                              child: TriangleIndicator(
                                color: Colors
                                    .white54, // <-- changing the color of the indicator
                              ),
                            ),
                          ],
                          items: [
                            for (var it in wheelItems) FortuneItem(
                                child: Text(it,
                                  style: TextStyle(color: Colors.black,
                                      fontSize: MediaQuery
                                          .of(context)
                                          .size
                                          .width * 0.058,
                                      fontFamily: "LittleComet"),
                                  textAlign: TextAlign.center,),
                                style: FortuneItemStyle(
                                  color: Colors.white60,
                                  borderColor: Colors.black45,
                                  borderWidth: 3,
                                )
                            ),

                          ], // items in FortuneWheel

                        ),

                      ),
                      /*
                      Container(
                          alignment: Alignment.topCenter,
                          height: MediaQuery.of(context).size.height * 0.01,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Text("Restaurant " + (num + 1).toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: MediaQuery.of(context).size.height * 0.03,
                                fontFamily: "LittleComet",
                              )

                          )
                      ),
                      */

                      Center(
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.3,
                              child: Text('SPIN',
                                style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05,
                                    color: Colors.red, fontFamily: "LittleComet"),
                                textAlign: TextAlign.center,
                              ),

                            ),
                          )
                    ] // children for Column
                )
            )
          //},
        )
    );
  }
}
