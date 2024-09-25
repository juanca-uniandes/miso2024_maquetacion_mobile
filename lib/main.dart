import 'package:flutter/material.dart';
import 'package:miso2024_maquetacion_mobile/views/splash_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartAlarm',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: SplashScreen(),
    );
  }
}
