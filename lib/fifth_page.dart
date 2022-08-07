/*
import 'package:flutter/material.dart';
import 'package:yelp_fusion_client/yelp_fusion_client.dart';

class FifthPage extends StatefulWidget {

  @override
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {

  String restyName = "";

  final YelpFusion api = YelpFusion(apiKey:
  'laqCFLvdMt1B6Z9keKi6vAdmXf1nfyOUAMEOjq6DHZBLx2ZTVZrrDfkLLrzBG96bHylEdz3pJgLzWoQAJgBcXiL61yTuIDARydNVbCwnFRmgPDAutpSXwqUrLzfNYXYx');
  //Business restyDetails = (api.fetchBusinessDetails(id: 'north-india-restaurant-san-francisco', asObject: true));

  Future<String> restyDetails()
  {
    /*
    return api.fetchBusinessDetails(id: 'north-india-restaurant-san-francisco', asObject: true)
        .then((details) => print("Restaurant Name: " + details.name
        + "\nYelp Rating: " + details.rating.toString()));
    */
    //var details = await api.fetchBusinessDetails(id: 'north-india-restaurant-san-francisco', asObject: true);
    //return await details.name;
   return api.fetchBusinessDetails(id: 'north-india-restaurant-san-francisco', asObject: true)
        .then((details) => details.alias);
  }


  @override
  Widget build(BuildContext context) {
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
              /*
              child: Text("" + api.fetchBusinessDetails(id: 'north-india-restaurant-san-francisco', asObject: true)
                  .then((details) => details.name.toString())),*/
              /*restyDetails().toString()),*/
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
              /*
              child: Text("" + api.fetchBusinessDetails(id: 'north-india-restaurant-san-francisco', asObject: true)
                  .then((details) => details.name.toString())),*/
              /*restyDetails().toString()),*/
              child: Text("Name of Restaurant",
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
              /*
              child: Text("" + api.fetchBusinessDetails(id: 'north-india-restaurant-san-francisco', asObject: true)
                  .then((details) => details.name.toString())),*/
              /*restyDetails().toString()),*/
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
              /*
              child: Text("" + api.fetchBusinessDetails(id: 'north-india-restaurant-san-francisco', asObject: true)
                  .then((details) => details.name.toString())),*/
              /*restyDetails().toString()),*/
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
              /*
              child: Text("" + api.fetchBusinessDetails(id: 'north-india-restaurant-san-francisco', asObject: true)
                  .then((details) => details.name.toString())),*/
              /*restyDetails().toString()),*/
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
                              Navigator.pop(context);
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
                              Navigator.pop(context);
                            },
                          ),
                        )
                    ),
                  ),
                ),
                // add row of options to "Re-Spin" and "Exit to Home Page"
              ],
            )
          ], // children for Column
        ),
      )
    );
  }
}

*/
