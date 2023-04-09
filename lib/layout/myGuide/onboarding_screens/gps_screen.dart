import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:udemy_project/layout/myGuide/onboarding_screens/audiobook_screen.dart';
import 'package:udemy_project/layout/myGuide/onboarding_screens/welcome_screen.dart';

import 'gps_screen.dart';

class GpsScreen extends StatelessWidget {

  final controller = PageController(viewportFraction: 0.8, keepPage: true);

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
          padding: const EdgeInsets.all(20.0),

          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image:AssetImage('assets/images/Gps onboarding.png'),
                  height: 300.0,

                ),
                Text(
                  'GPS',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Specifying the place of the blind' ,
                  style: TextStyle(
                    fontSize: 16.0,


                  ),
                ),
                Text(
                  'will be easy' ,
                  style: TextStyle(
                    fontSize: 16.0,


                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: pages.length,
                  effect: WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: HexColor('063455'),
                    dotHeight: 16,
                    dotWidth: 16,
                    type: WormType.thin,
                    // strokeWidth: 5,
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: HexColor('063455'),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ) ,
                  ),
                  width: 400.0,

                  child: MaterialButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder:(context) => AudioBookScreen(
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
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ) ,
                  ),
                  width: 400.0 ,
                  child: MaterialButton(
                    color: Colors.white,
                    elevation: 15.0,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder:(context) => WelcomeScreen(
                            )
                        ),
                      );
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(
                        color: HexColor('063455'),
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

