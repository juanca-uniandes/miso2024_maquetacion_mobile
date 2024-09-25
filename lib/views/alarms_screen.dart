import 'package:flutter/material.dart';

class AlarmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tus alarmas', style: TextStyle(fontFamily: 'Roboto')),
        backgroundColor: Color(0xFFB4E6F8),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Color(0xFFF5F5F5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Alineación izquierda para títulos
          children: [
            // Botón de crear nueva alarma centrado
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Lógica para crear nueva alarma
                },
                child: Text('Crear nueva alarma'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFB4E6F8),
                  foregroundColor: Colors.black,
                  minimumSize: Size(180, 56),
                ),
              ),
            ),
            SizedBox(height: 40),

            // Título de la sección de filtrar alarmas alineado a la izquierda
            Text(
              'Filtrar alarmas',
              style: TextStyle(fontSize: 22, fontFamily: 'Roboto'),
            ),
            SizedBox(height: 20),

            // Inputs y botón de filtrar centrados
            Center(
              child: Column(
                children: [
                  // Input para filtrar por nombre
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFB4E6F8),
                      hintText: 'Buscar por nombre',
                      hintStyle: TextStyle(color: Color(0xFF129CCE)),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),

                  // Input para filtrar por fecha
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFB4E6F8),
                      hintText: 'Buscar por fecha',
                      hintStyle: TextStyle(color: Color(0xFF129CCE)),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),

                  // Botón de filtrar centrado
                  ElevatedButton(
                    onPressed: () {
                      // Lógica para aplicar filtro
                    },
                    child: Text('Filtrar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFB4E6F8),
                      foregroundColor: Colors.black,
                      minimumSize: Size(180, 56),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40), // Espacio entre secciones

            // Título para la sección de alarmas alineado a la izquierda
            Text(
              'Tus alarmas',
              style: TextStyle(fontSize: 22, fontFamily: 'Roboto'),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20),

            // Tabla de alarmas con fondo y bordes ajustados
            Expanded(
              child: Table(
                border: TableBorder.all(color: Color(0xFF129CCE), width: 2), // Bordes de color
                columnWidths: {
                  0: FlexColumnWidth(3), // Columnas con tamaño flexible
                  1: FlexColumnWidth(1),
                },
                children: List.generate(3, (index) {
                  return TableRow(
                    decoration: BoxDecoration(
                      color: Color(0xFFB4E6F8), // Fondo de la tabla
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Alarma ${index + 1}',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      // Icono de menú desplegable para acciones en cada alarma
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: PopupMenuButton<String>(
                          icon: Icon(Icons.more_vert), // Tres puntos verticales
                          onSelected: (value) {
                            // Acciones al seleccionar una opción
                          },
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem(
                                value: 'editar',
                                child: Text('Editar'),
                              ),
                              PopupMenuItem(
                                value: 'duplicar',
                                child: Text('Duplicar'),
                              ),
                              PopupMenuItem(
                                value: 'inactivar',
                                child: Text('Inactivar / Activar'),
                              ),
                              PopupMenuItem(
                                value: 'eliminar',
                                child: Text('Eliminar'),
                              ),
                            ];
                          },
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
