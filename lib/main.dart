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
          centerTitle: true,
          backgroundColor: Colors.deepPurple, // Color de fondo del AppBar
          foregroundColor:
              Colors.white, // Color del texto y los íconos del AppBar
          toolbarHeight: 80.0, // Altura del AppBar
        ),
        body: Center(
          child: EmployeeCard(
            nombre: 'Saul Perez',
            edad: 30,
            idEmpleado: 'EMP-1222',
          ),
        ),
      ),
    );
  }
}

class EmployeeCard extends StatelessWidget {
  final String nombre;
  final int edad;
  final String idEmpleado;

  const EmployeeCard({
    required this.nombre,
    required this.edad,
    required this.idEmpleado,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 150, // Ancho del Card (más estrecho)
      child: Card(
        elevation: 5.0, // Sombra
        color: Colors.blue[50], // Color de fondo del Card (azul claro)
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0), // Bordes redondeados
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0), // Padding reducido
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Alinear ícono y texto
            mainAxisSize:
                MainAxisSize.min, // Ajusta el tamaño de la fila al contenido
            children: [
              // Ícono de empleado (más pequeño)
              Icon(Icons.person, size: 40.0, color: Colors.blue),
              SizedBox(width: 20.0),
              // Espacio reducido entre el ícono y los atributos
              // Columna con los atributos
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nombre: $nombre',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87, // Color del texto
                    ),
                  ),
                  SizedBox(height: 10.0), // Espacio reducido
                  Text(
                    'Edad: $edad años',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87, // Color del texto
                    ),
                  ),
                  SizedBox(height: 4.0), // Espacio reducido
                  Text(
                    'ID Empleado: $idEmpleado',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black87, // Color del texto
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
