import 'package:flutter/material.dart';
import 'pantallas/inicioSesion.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'La Revueltería de Don Pacho',
      home: InicioSesion(), // Corregido con la 'I' mayúscula
    );
  }
}