/*
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:restaurant_roulette/third_page.dart';

String selectedValue = "";
int num = 0;

class AppSecondPage extends StatefulWidget {
  @override
  _AppSecondPageState createState() => _AppSecondPageState();
}

class _AppSecondPageState extends State<AppSecondPage> {
  final wheelItems = <String> [
    "Restaurant 1",
    "Restaurant 2",
    "Restaurant 3",
    "Restaurant 4",
    "Restaurant 5",
    "Restaurant 6",
  ];

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
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.06,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.32,
                              //padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
                              //margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                        if (states.contains(
                                            MaterialState.pressed))
                                          return Colors.black45;
                                        return Colors.white;
                                      },
                                    ),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
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
                          height: MediaQuery.of(context).size.height * 0.13,
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
                        height: MediaQuery.of(context).size.height * 0.65,
                        width: MediaQuery.of(context).size.width,
                        child: FortuneWheel(
                          selected: selected.stream,
                          animateFirst: true,
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

                      Container(
                          alignment: Alignment.topCenter,

                          child: Text("Restaurant " + (num + 1).toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: MediaQuery.of(context).size.height * 0.03,
                                fontFamily: "LittleComet",
                              )

                          )
                      ),

                    ] // children for Column
                )
            )
          //},
        )
    );
  }
}

 */

/*
// import statements
import 'package:flutter/material.dart';
import 'package:restaurant_roulette/second_page.dart';

class AppFrontPage extends StatefulWidget {
  @override
  _AppFrontPageState createState() => _AppFrontPageState();
}

// Class Name: AppFrontPage()
// Parameters: None
// Return Value: Returns a Scaffold containing the Front Page of the app
class _AppFrontPageState extends State<AppFrontPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Container containing the background of the first
                  // half of the screen (contains App Name + Image)
                  Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                              bottomLeft: Radius.circular(125),
                              bottomRight: Radius.circular(125))
                      ),

                      // Row to add the Image and App Name Text within the
                      // Container
                      child: Row(
                        children: [
                          // need image of roulette and restaurant roulette text
                          Container(
                            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.035,
                                bottom: MediaQuery.of(context).size.height * 0.015,),
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Image.asset("assets/images/RouletteImage.png",
                                fit: BoxFit.fill,
                                //scale: 0.1, height: 5000
                                ),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * 0.035),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Text("Restaurant\nRoulette",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: MediaQuery.of(context).size.height * 0.057,
                                      fontFamily: "LittleComet")
                              )
                          )
                        ],// children for Row
                      )
                  ),
                  Container(
                    alignment: Alignment.center,
                    //height: MediaQuery.of(context).size.height * 0.21,
                    //width: MediaQuery.of(context).size.width * 0.55,
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07),
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.185),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Colors.black45;
                              return Colors.white;
                              },
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35.0),
                                side: BorderSide(color: Colors.black)
                              )
                            )
                          ),
                          child: Text('Spin',
                            style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05,
                              color: Colors.red, fontFamily: "LittleComet")),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AppSecondPage()));
                          },
                        ),
                      ),
                  )
                ] // children for Column
            )
        )
    );
  }
}
 */