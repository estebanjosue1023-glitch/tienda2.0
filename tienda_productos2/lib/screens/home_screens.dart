import 'package:flutter/material.dart';
import '../models/producto.dart';
import '../widgets/producto_card.dart';
import '../constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  final List<Producto> productos = [
    Producto(
      nombre: 'Zapatillas Deportivas',
      descripcion: 'Cómodas y ligeras para correr',
      precio: 89.99,
      imagenUrl: 'https://m.media-amazon.com/images/I/41pWPwkB1LL._AC_.jpg',
    ),
    Producto(
      nombre: 'Reloj Inteligente',
      descripcion: 'Controla tu salud y notificaciones',
      precio: 199.99,
      imagenUrl: 'https://m.media-amazon.com/images/I/71R2LfMrlFL._AC_SL1500_.jpg',
    ),
    Producto(
      nombre: 'Auriculares Bluetooth',
      descripcion: 'Sonido envolvente y batería duradera',
      precio: 59.99,
      imagenUrl: 'https://via.placeholder.com/300',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tienda de Productos'),
        backgroundColor: AppColors.primary,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: productos.length,
        itemBuilder: (context, index) {
          return ProductoCard(producto: productos[index]);
        },
      ),
    );
  }
}