import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

bool click = true;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap:((){

            setState(() {
              click=!click;
            });
          }), // Image tapped
          child: Image.asset( (click==false) ?
            'assets/wateroff.png' : 'assets/wateron.png',
//fit: BoxFit.fill, // Fixes border issues
            width: 300.0,
            height: 300.0,
          ),
        ),
      ),
    );
  }
}




//



