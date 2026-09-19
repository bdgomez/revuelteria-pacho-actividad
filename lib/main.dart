import 'package:flutter/material.dart';
import 'package:la_revuelteria_de_pacho/pantallas/inicioListview.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InicioListView(correo: 'camila@email.com'),
    );
  }
}
