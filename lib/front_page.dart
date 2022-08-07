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
                          child: Text('Ready to Spin?',
                            style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05,
                              color: Colors.red, fontFamily: "LittleComet"),
                          textAlign: TextAlign.center,),
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