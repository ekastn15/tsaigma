import 'package:figmaaap/LoginPage.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    SplashScreenStart();
  }

  SplashScreenStart() async {
    var duration = const Duration(seconds: 10);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 360,
        height: 640,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 204, 51, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 217,
              left: 31,
              child: Container(
                  width: 298,
                  height: 167,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img/Dts1.png'),
                        fit: BoxFit.fitWidth),
                  )))
        ]));
  }
}
