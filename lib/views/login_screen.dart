import 'package:flutter/material.dart';
import 'package:miso2024_maquetacion_mobile/views/register_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F5F5),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Inicio de sesión',
                style: TextStyle(fontSize: 28, fontFamily: 'Roboto'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFB4E6F8),
                  hintText: 'Usuario',
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFB4E6F8),
                  hintText: 'Contraseña',
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Lógica para iniciar sesión
                },
                child: Text('Iniciar sesión'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFB4E6F8), // Color de fondo
                  foregroundColor: Colors.black, // Color del texto
                  minimumSize: Size(180, 56),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Navegar a la pantalla de recuperación de contraseña
                },
                child: Text('¿Olvidaste tu contraseña?'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black, // Color del texto
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RegisterScreen()));
                },
                child: Text('¿Nuevo aquí? Regístrate'),
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
