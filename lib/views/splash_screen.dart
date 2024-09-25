import 'package:flutter/material.dart';
import 'package:miso2024_maquetacion_mobile/views/login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/logo.png'), // Asegúrate de tener un logo en esta ruta
      ),
    );
  }
}
