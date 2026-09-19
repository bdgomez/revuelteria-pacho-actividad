import 'package:flutter/material.dart';
import 'package:la_revuelteria_de_pacho/modelos/productor.dart';

class DetalleProductor extends StatelessWidget {
  const DetalleProductor({super.key, required this.productor});

  final Productor productor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalle del productor')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.agriculture, size: 80, color: Colors.green),
            const SizedBox(height: 16),
            Text(
              productor.nombre,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Vereda: ${productor.vereda}'),
            Text('Distancia: ${productor.distancia}'),
          ],
        ),
      ),
    );
  }
}
