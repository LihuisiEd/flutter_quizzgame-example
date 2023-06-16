import 'package:flutter/material.dart';

class GraficosPage extends StatefulWidget {
  const GraficosPage({Key? key}) : super(key: key);

  @override
  State<GraficosPage> createState() => _GraficosPageState();
}

class _GraficosPageState extends State<GraficosPage> {
  String selectedGraphics = 'High';

  void changeGraphics(String graphics) {
    setState(() {
      selectedGraphics = graphics;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gráficos del juego'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selecciona la calidad de los gráficos:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              title: Text('Altos'),
              leading: Radio<String>(
                value: 'High',
                groupValue: selectedGraphics,
                onChanged: (value) {
                  changeGraphics(value!);
                },
              ),
            ),
            ListTile(
              title: Text('Medios'),
              leading: Radio<String>(
                value: 'Medium',
                groupValue: selectedGraphics,
                onChanged: (value) {
                  changeGraphics(value!);
                },
              ),
            ),
            ListTile(
              title: Text('Bajos'),
              leading: Radio<String>(
                value: 'Low',
                groupValue: selectedGraphics,
                onChanged: (value) {
                  changeGraphics(value!);
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Aplicar la calidad de gráficos seleccionada
                // Aquí puedes implementar la lógica para cambiar la calidad de gráficos del juego
                Navigator.pop(context, selectedGraphics);
              },
              child: Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
