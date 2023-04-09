import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:udemy_project/layout/myGuide/onboarding_screens/gps_screen.dart';

class WelcomeScreen extends StatelessWidget {

  var boardController = PageController();

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        3,
            (index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey.shade300,
          ),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Container(
            height: 280,
            child: Center(
                child: Text(
                  "Page $index",
                  style: TextStyle(color: Colors.indigo),
                )),
          ),
        ));
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image:AssetImage('assets/images/welcomm.jpg'),
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Let\'s help each other' ,
                  style: TextStyle(
                    fontSize: 16.0,


                  ),
                ),
                Text(
                  'and get the best solution' ,
                  style: TextStyle(
                    fontSize: 16.0,


                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SmoothPageIndicator(
                  controller: boardController,

                  effect: WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: HexColor('063455'),
                    dotHeight: 16,
                    dotWidth: 16,
                    type: WormType.thin,
                    // strokeWidth: 5,
                  ),
                  count: pages.length,
                ),

                SizedBox(
                  height: 80.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: HexColor('063455'),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ) ,
                  ),
                  width: 400.0 ,
                  child: MaterialButton(
                    onPressed: (){
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                          builder:(context) => GpsScreen(
                     )
                     ),
                     );
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),





              ],
            ),
          ),
        ),
      ),
    );
  }
}

