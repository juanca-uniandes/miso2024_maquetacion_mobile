import 'package:flutter/material.dart';
import 'package:miso2024_maquetacion_mobile/views/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFFF5F5F5),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Registro',
                style: TextStyle(fontSize: 28, fontFamily: 'Roboto'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              TextField(
                textAlign: TextAlign.center, // Centrar texto
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFB4E6F8),
                  hintText: 'Usuario',
                  hintStyle: TextStyle(color: Color(0xFF129CCE)), // Color del placeholder
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                textAlign: TextAlign.center, // Centrar texto
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFB4E6F8),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Color(0xFF129CCE)), // Color del placeholder
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center, // Centrar texto
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFB4E6F8),
                  hintText: 'Contraseña',
                  hintStyle: TextStyle(color: Color(0xFF129CCE)), // Color del placeholder
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Lógica para registrar usuario
                },
                child: Text('Registrar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFB4E6F8), // Color de fondo
                  foregroundColor: Colors.black, // Color del texto
                  minimumSize: Size(180, 56),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginScreen()));
                },
                child: Text('¿Ya tienes una cuenta? Inicia sesión aquí'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black, // Color del texto
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
