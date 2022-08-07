import 'package:flutter/material.dart';
import 'package:restaurant_roulette/fourth_page.dart';
import 'package:restaurant_roulette/second_page.dart';
import 'package:yelp_fusion_client/yelp_fusion_client.dart';

import 'fifth_page.dart';

class ThirdPage extends StatefulWidget {

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.21,
                width: MediaQuery.of(context).size.width * 0.9,
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
                  child: Text(AppSecondPage().methodRestaurantName(),
                      style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.04,
                          color: Colors.red, fontFamily: "LittleComet"),
                          textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage())
                    ); // Navigator.push in onPressed
                  },
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
