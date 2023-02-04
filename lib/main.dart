import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

var flag = 1;
var switchFlag = "ON";
var num=800.0;

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            WaveWidget(
              config: CustomConfig(
                  gradients: [
                    [Colors.lightBlue, Colors.lightBlueAccent],
                    [Colors.lightBlueAccent, Colors.blue],
                    [Colors.blueAccent, Colors.lightBlueAccent],
                    [Colors.lightBlueAccent, Colors.blue],
                  ],
                  gradientBegin: Alignment.centerLeft,
                  gradientEnd: Alignment.centerRight,
                  durations: [3500, 19440, 10800, 6000],
                  heightPercentages: [0.20, 0.23, 0.25, 0.30]),
              size: Size(num, num),
            ),Container(
              width: 500.0,
              height: 500.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text(switchFlag, style: TextStyle(fontSize: 20),),
                    onPressed: (){
                      if(flag==1){
                        flag=0;
                        switchFlag="ON";
                        num=0.0;
                      }else{
                        flag=1;
                        switchFlag="OFF";
                        num=800.0;
                      }
                    },
                    color: Colors.indigoAccent,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.grey,
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
