import 'package:fitness_app/HomeScreen.dart';
import 'package:fitness_app/res/MyColors.dart';
import 'package:flutter/material.dart';

class IntroductionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),  //Inside the container all things will be horizontally space 20.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/intro.png"),
            SizedBox(
              height: 20,
            ),
            Container(
              width: size.width*0.75,
              child: Text(
                "30 Days Of Fitness Challenges",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Track Your Fitness Level By Our Smart Mobile App",
              style: TextStyle(
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Spacer(),  // empty spacer that can be used to tune the spacing between widgets in a Flex container, like Row or Column.
                RawMaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  elevation: 2.0,
                  fillColor: MyColor.primary,
                  child: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(15),
                  shape: CircleBorder(),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
