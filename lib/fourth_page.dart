import 'package:flutter/material.dart';
import 'package:restaurant_roulette/third_page.dart';
import 'package:yelp_fusion_client/yelp_fusion_client.dart';
import 'dart:async';

class FourthPage extends StatefulWidget {
  //methodRestyName() => createState().restyDetails();

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {

  String restyName = "JGIDJGD";

  final YelpFusion api = YelpFusion(apiKey:
  'laqCFLvdMt1B6Z9keKi6vAdmXf1nfyOUAMEOjq6DHZBLx2ZTVZrrDfkLLrzBG96bHylEdz3pJgLzWoQAJgBcXiL61yTuIDARydNVbCwnFRmgPDAutpSXwqUrLzfNYXYx');
  //Business restyDetails = (api.fetchBusinessDetails(id: 'north-india-restaurant-san-francisco', asObject: true));

  Future<String> restaurantCategory()
  async {

    return api.fetchBusinessDetails(id: 'gary-danko-san-francisco', asObject: true)
        .then((details) => details.categories.categories[0].title);
  }

  Future<String> restaurantName()
  async {

    return api.fetchBusinessDetails(id: 'gary-danko-san-francisco', asObject: true)
        .then((details) => details.name);
  }

  Future<String> restaurantLocation()
  async {
    /*
    return api.fetchBusinessDetails(id: "gary-danko-san-francisco",
        asObject: true)
        .then((details) => details.location.address1 +
        "\n" + details.location.city + ", " + details.location.state);*/

    return api.fetchBusinessDetails(id: 'north-india-restaurant-san-francisco',
        asObject: true)
        .then((details) => details.location.displayAddress[0]
        + ",\n" + details.location.displayAddress[1]);


  }

  Future<String> restaurantYelpRating()
  async {

    return api.fetchBusinessDetails(id: 'gary-danko-san-francisco', asObject: true)
        .then((details) => details.rating.toString());
  }

  Future<String> restaurantYelpUrl()
  async {

    return api.fetchBusinessDetails(id: 'gary-danko-san-francisco', asObject: true)
        .then((details) => details.url.toString());
  }


  Widget build(context){
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FutureBuilder<String> (
              future: restaurantCategory(),
              builder: (context, AsyncSnapshot<String> snapshot) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.9,
                  alignment: Alignment.center,
                  child: Text(snapshot.data.toString(),
                    style: TextStyle(fontFamily: "LittleComet",
                      color: Colors.red,
                      fontSize: MediaQuery.of(context).size.height * 0.05,),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.redAccent,
                      width: 5,),
                    borderRadius: BorderRadius.all(Radius.elliptical(50.0, 50.0)),
                  ),
                );
              }
            ),

            FutureBuilder<String> (
                future: restaurantName(),
                builder: (context, AsyncSnapshot<String> snapshot) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.9,
                    alignment: Alignment.center,
                    child: Text(snapshot.data.toString(),
                      style: TextStyle(fontFamily: "LittleComet",
                        color: Colors.red,
                        fontSize: MediaQuery.of(context).size.height * 0.05,),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.redAccent,
                        width: 5,),
                      borderRadius: BorderRadius.all(Radius.elliptical(15.0, 15.0)),
                    ),
                  );
                }
            ),

            FutureBuilder<String> (
                future: restaurantLocation(),
                builder: (context, AsyncSnapshot<String> snapshot) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.1705,
                    width: MediaQuery.of(context).size.width * 0.9,
                    alignment: Alignment.center,
                    child: Text(snapshot.data.toString(),
                      style: TextStyle(fontFamily: "LittleComet",
                        color: Colors.red,
                        fontSize: MediaQuery.of(context).size.height * 0.05,),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.redAccent,
                        width: 5,),
                      borderRadius: BorderRadius.all(Radius.elliptical(50.0, 50.0)),
                    ),
                  );
                }
            ),

            FutureBuilder<String> (
                future: restaurantYelpRating(),
                builder: (context, AsyncSnapshot<String> snapshot) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.9,
                    alignment: Alignment.center,
                    child: Text("Yelp Rating: " + snapshot.data.toString(),
                      style: TextStyle(fontFamily: "LittleComet",
                        color: Colors.red,
                        fontSize: MediaQuery.of(context).size.height * 0.04,),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.redAccent,
                        width: 5,),
                      borderRadius: BorderRadius.all(Radius.elliptical(50.0, 50.0)),
                    ),
                  );
                }
            ),

            FutureBuilder<String> (
                future: restaurantYelpUrl(),
                builder: (context, AsyncSnapshot<String> snapshot) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width * 0.9,
                    alignment: Alignment.center,
                    child: Text(snapshot.data.toString(),
                      style: TextStyle(fontFamily: "LittleComet",
                        color: Colors.red,
                        fontSize: MediaQuery.of(context).size.height * 0.03,),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.redAccent,
                        width: 5,),
                      borderRadius: BorderRadius.all(Radius.elliptical(50.0, 50.0)),
                    ),
                  );
                }
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.5,
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
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(50.0, 50.0)
                                    ),
                                    side: BorderSide(color: Colors.redAccent,
                                        width: 5),
                                  )
                              ),
                            ),
                            child: Text('Re-Spin',
                              style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05,
                                  color: Colors.red, fontFamily: "LittleComet"),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () {
                              //print(restyDetails());
                              Navigator.pop(context);
                              Navigator.pop(context);
                              //Navigator.pop(context);
                            },
                          ),
                        )
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.5,
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
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(50.0, 50.0)
                                    ),
                                    side: BorderSide(color: Colors.redAccent,
                                        width: 5),
                                  )
                              ),
                            ),
                            child: Text('Exit',
                              style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05,
                                  color: Colors.red, fontFamily: "LittleComet"),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () {
                              //print(restyDetails());
                              Navigator.pop(context);
                              Navigator.pop(context);
                              Navigator.pop(context);
                              //Navigator.pop(context);
                            },
                          ),
                        )
                    ),
                  ),
                ),
                // add row of options to "Re-Spin" and "Exit to Home Page"
              ],
            ),
          ],
        ),
      ),
    );
  }


/*
  Widget build(context) {
    return FutureBuilder<String>(
        future: returnRestyDetailName(),
        builder: (context, AsyncSnapshot<String> snapshot) {

          return Scaffold(
            backgroundColor: Colors.red,
            body: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.9,
                      alignment: Alignment.center,
                      child: Text("Cuisine of Restaurant",
                        style: TextStyle(fontFamily: "LittleComet",
                          color: Colors.red,
                          fontSize: MediaQuery.of(context).size.height * 0.05,),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.redAccent,
                          width: 5,),
                        borderRadius: BorderRadius.all(Radius.elliptical(50.0, 50.0)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.9,
                      alignment: Alignment.center,
                      child: Text(snapshot.data.toString(),
                        style: TextStyle(fontFamily: "LittleComet",
                          color: Colors.red,
                          fontSize: MediaQuery.of(context).size.height * 0.05,),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.redAccent,
                          width: 5,),
                        borderRadius: BorderRadius.all(Radius.elliptical(50.0, 50.0)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1805,
                      width: MediaQuery.of(context).size.width * 0.9,
                      alignment: Alignment.center,
                      child: Text("Address of Restaurant",
                        style: TextStyle(fontFamily: "LittleComet",
                          color: Colors.red,
                          fontSize: MediaQuery.of(context).size.height * 0.05,),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.redAccent,
                          width: 5,),
                        borderRadius: BorderRadius.all(Radius.elliptical(50.0, 50.0)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.9,
                      alignment: Alignment.center,
                      child: Text("Yelp Rating",
                        style: TextStyle(fontFamily: "LittleComet",
                          color: Colors.red,
                          fontSize: MediaQuery.of(context).size.height * 0.05,),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.redAccent,
                          width: 5,),
                        borderRadius: BorderRadius.all(Radius.elliptical(50.0, 50.0)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.9,
                      alignment: Alignment.center,
                      child: Text("URL for Restaurant Yelp",
                        style: TextStyle(fontFamily: "LittleComet",
                          color: Colors.red,
                          fontSize: MediaQuery.of(context).size.height * 0.05,),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.redAccent,
                          width: 5,),
                        borderRadius: BorderRadius.all(Radius.elliptical(50.0, 50.0)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            child: Center(
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.1,
                                  width: MediaQuery.of(context).size.width * 0.5,
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
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(50.0, 50.0)
                                            ),
                                            side: BorderSide(color: Colors.redAccent,
                                                width: 5),
                                          )
                                      ),
                                    ),
                                    child: Text('Re-Spin',
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05,
                                          color: Colors.red, fontFamily: "LittleComet"),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {
                                      //print(restyDetails());
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                      //Navigator.pop(context);
                                    },
                                  ),
                                )
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Center(
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.1,
                                  width: MediaQuery.of(context).size.width * 0.5,
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
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(50.0, 50.0)
                                            ),
                                            side: BorderSide(color: Colors.redAccent,
                                                width: 5),
                                          )
                                      ),
                                    ),
                                    child: Text('Exit',
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05,
                                          color: Colors.red, fontFamily: "LittleComet"),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {
                                      //print(restyDetails());
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                      //Navigator.pop(context);
                                    },
                                  ),
                                )
                            ),
                          ),
                        ),
                        // add row of options to "Re-Spin" and "Exit to Home Page"
                      ],
                    ),
                  ], // children for Column
              ),
            )
          );
        }
    );
  } */
}
