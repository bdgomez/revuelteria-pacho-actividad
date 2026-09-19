import 'package:flutter/material.dart';

class Categoria extends StatelessWidget {
  const Categoria({super.key, required this.texto, this.seleccionada = false});

  final String texto;
  final bool seleccionada;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Chip(
        label: Text(texto),
        backgroundColor: seleccionada ? Colors.green : Colors.green.shade50,
        labelStyle: TextStyle(
          color: seleccionada ? Colors.white : Colors.green.shade800,
        ),
      ),
    );
  }
}
