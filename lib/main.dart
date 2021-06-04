import 'package:fitness_app/Indroduction_screen.dart';
import 'package:flutter/material.dart';
import 'res/MyColors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: MyColor.primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IntroductionScreen(),
    );
  }
}
