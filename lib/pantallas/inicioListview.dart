import 'package:flutter/material.dart';
import 'package:la_revuelteria_de_pacho/modelos/productor.dart';
import 'package:la_revuelteria_de_pacho/pantallas/detalle_productor.dart';
import 'package:la_revuelteria_de_pacho/widgets/categoria.dart';

class InicioListView extends StatelessWidget {
  const InicioListView({super.key, required this.correo});

  final String correo;

  static const List<Productor> productores = [
    Productor(
      nombre: 'Finca La Esperanza',
      vereda: 'El Retiro',
      distancia: '3.2 km',
    ),
    Productor(
      nombre: 'Huerta Doña Rosa',
      vereda: 'La Cabrera',
      distancia: '5.1 km',
    ),
    Productor(
      nombre: 'Finca El Manantial',
      vereda: 'Rionegro',
      distancia: '4.4 km',
    ),
    Productor(
      nombre: 'Granja Los Alpes',
      vereda: 'Pajonales',
      distancia: '6.0 km',
    ),
    Productor(
      nombre: 'Cultivos San Isidro',
      vereda: 'El Retiro',
      distancia: '2.8 km',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffaf8f3),
      appBar: AppBar(
        backgroundColor: const Color(0xfffaf8f3),
        title: const Text('La revueltería de Pacho'),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined),
              ),
              const Positioned(
                right: 5,
                top: 3,
                child: CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.orange,
                  child: Text(
                    '3',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hola, $correo', style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 6),
            const Text(
              'Mercado campesino cerca de ti',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 18),
            TextField(
              decoration: InputDecoration(
                hintText: 'Buscar productor o producto',
                prefixIcon: const Icon(Icons.search, color: Colors.green),
                filled: true,
                fillColor: const Color(0xfff1eadc),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Categoria(texto: 'Todos', seleccionada: true),
                  Categoria(texto: 'Verduras'),
                  Categoria(texto: 'Frutas'),
                  Categoria(texto: 'Lácteos'),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Productores cercanos',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${productores.length} resultados',
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: productores.length,
                itemBuilder: (context, index) {
                  final productor = productores[index];

                  return Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green.shade100,
                        child: const Icon(
                          Icons.agriculture,
                          color: Colors.green,
                        ),
                      ),
                      title: Text(productor.nombre),
                      subtitle: Text(
                        '${productor.vereda} · ${productor.distancia}',
                      ),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetalleProductor(productor: productor),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Inicio'),
          NavigationDestination(
            icon: Icon(Icons.receipt_long),
            label: 'Pedidos',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'Alertas',
          ),
          NavigationDestination(icon: Icon(Icons.person), label: 'Cuenta'),
        ],
      ),
    );
  }
}
