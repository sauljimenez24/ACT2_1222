import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card de saul 1222'),
          centerTitle: true, // Centrar el título
          backgroundColor: Colors.blueGrey, // Color de fondo del AppBar
          foregroundColor:
              Colors.white, // Color del texto y los íconos del AppBar
        ),
        body: Center(
          child: MyCard(),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0, // Sombra
      color: Color(0xf6c5881e), // Color de fondo del Card (naranja oscuro)
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Bordes redondeados
      ), // Aquí se cerró el paréntesis que faltaba
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // Ajusta el tamaño de la columna al contenido
          children: [
            PropertyWidget(
                icon: Icons.home_filled,
                label: 'Inicio',
                color: Colors.white), // Ícono blanco
            PropertyWidget(
                icon: Icons.favorite,
                label: 'Favorito',
                color: Colors.yellowAccent), // Ícono amarillo
            PropertyWidget(
                icon: Icons.thumb_up,
                label: 'Like',
                color: Colors.lightBlueAccent), // Ícono azul claro
            PropertyWidget(
                icon: Icons.bluetooth,
                label: 'Bluetooth',
                color: Colors.lightGreenAccent), // Ícono verde claro
            PropertyWidget(
                icon: Icons.share,
                label: 'Compartir',
                color: Color(0xff281c20)), // Ícono rosa
          ],
        ),
      ),
    ); // Se eliminó el punto y coma extra
  }
}

class PropertyWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const PropertyWidget({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 8.0), // Espacio entre elementos
      child: Row(
        children: [
          Icon(icon, size: 25.0, color: color), // Icono con color personalizado
          SizedBox(width: 15.0), // Espacio entre el ícono y el texto
          Text(
            label,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold, // Texto en negrita
              color: Colors.white, // Color del texto (blanco para contrastar)
            ),
          ),
        ],
      ),
    );
  }
}
