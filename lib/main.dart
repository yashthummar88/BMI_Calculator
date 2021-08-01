import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/screens/home.dart';
import 'package:flutter_app/screens/result.dart';
import 'package:flutter_app/screens/splash.dart';

void main() {
  String _fontFamily = 'oswald';
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xff0a112d), // navigation bar color
    statusBarColor: Color(0xff0a112d), // status bar color
  ));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        'home': (context) => Home(),
        'result': (context) => Result(),
      },
      theme: ThemeData(
        fontFamily: _fontFamily,
      ),
    ),
  );
}
