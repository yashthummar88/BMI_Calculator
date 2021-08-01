import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('home');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff0a112d),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/bmi.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'BMI CALCULATOR',
              style: TextStyle(
                  fontSize: 30, letterSpacing: 2, color: Colors.white),
            ),
            SizedBox(
              height: 100,
            ),
            CircularProgressIndicator(
              color: Colors.pink,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Check Your BMI',
              style: TextStyle(
                  fontSize: 30, letterSpacing: 2, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
