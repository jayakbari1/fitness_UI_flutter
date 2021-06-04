// All done how to HomePage Work.....

// Main Concept
/*
1. Gauge Class which creates circular arc
in this class we all set how to text inside this shape crate different application like speedometer etc.
There will be different properties of this class

Also create stylish bottomNavigationBar
 */


import 'package:fitness_app/MyLinearChart.dart';
import 'package:fitness_app/res/MyColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          CircleAvatar(
            radius: 20,
            child: ClipOval(  // ClipOval is a in-built method of clipper class
              child: Image.asset(
                'assets/avatar.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Today",
                  ),
                  Text(
                    "September 01, 2020",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(  //It will horizontally display heart,calories,sleep and training.
                children: [  //below all expanded widget used for create heart box..
                  Expanded(
                    child: Column(
                      children: [
                        Container(  //This container is used for creating Icons
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepOrange,
                          ),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Heart",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          "80",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Per min",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: MyColor.secondary),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyColor.primary,
                            ),
                            child: Icon(
                              Icons.local_fire_department_sharp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "Calories",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            "950",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Kcal",
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orangeAccent,
                          ),
                          child: Icon(
                            Icons.nightlight_round,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Sleep",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          "9:00",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Hours",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepPurple,
                          ),
                          child: Icon(
                            Icons.timer_sharp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Training",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          "2:00",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Hours",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 200,
              width: 200,
              child: SfRadialGauge(
                axes: [
                  RadialAxis(  //It's a circular arc in which s set of display along a linear or custome scale
                    axisLineStyle: AxisLineStyle(   //AxisLineStyle create a line style of axis line
                      thickness: 0.2,  //Specifies the axis of thickness line
                      thicknessUnit: GaugeSizeUnit.factor,  //Calculate axisLine thickness either in Logical pixel or radius factor
                      cornerStyle: CornerStyle.bothCurve,  //It's create both end curve at the end
                    ),
                    showTicks: false, //Whether to show the ticks on the axis of the gauge.
                    showLabels: false, //Whether to show the first label of the axis.
                    onAxisTapped: (value){}, //Callback, which is triggered by tapping an axis
                    pointers: [  //Create the pointer to indicate the value with built-in shape.
                      RangePointer(  //Create the pointer to indicate the value with rounded range bar arc.
                        color: MyColor.secondary,
                        value: 60,
                        onValueChanged: (value){},
                        cornerStyle: CornerStyle.bothCurve,
                        onValueChangeEnd: (value){},
                        onValueChangeStart: (value){},
                        enableDragging: true,
                        width: 0.2,
                        sizeUnit: GaugeSizeUnit.factor,
                      ),
                    ],
                    annotations: [
                      GaugeAnnotation(  //RadialAxis allows to add widgets such as text and image as an annotation to a specific point of interest in the radial gauge.
                          widget: Column(  //It will print the text value in circular arc shape
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "2.0",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                "KM",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        positionFactor: 0.13,
                        angle: 0.5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              transform: Matrix4.translationValues(0.0, -60, 0.0),
              child: Image.asset('assets/marathon.png'),
            ),

            // For Chart Graph
            Container(
              transform: Matrix4.translationValues(0.0, -60, 0.0),
                child: MyLinearChart()
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColor.secondary,
        onPressed: (){},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),

      //FloatingActionButtonLocation class provide common FloatingActionButton placements in Material Design applications
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar( //It will create stylish bottomNavigationBar
        color: MyColor.primary,
        shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(
                  Icons.add_chart,
                  color: Colors.white,
                ),
                onPressed: (){},
              ),
              SizedBox(width: 50,),
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                onPressed: (){},
              ),
            ],
          ),
      ),
    );
  }
}
