import 'package:flutter/material.dart';
import 'package:lab09/view/options/controles.dart';
import 'package:lab09/view/options/sonido.dart';
import 'package:lab09/view/options/idioma.dart';
import 'package:lab09/view/options/graficos.dart';

class OptionsPage extends StatefulWidget {
  const OptionsPage ({super.key});

  @override
  State<OptionsPage> createState() => _OptionsPage();
}

class _OptionsPage extends State<OptionsPage > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opciones'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('Sonido'),
              leading: Icon(Icons.volume_up),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const SonidoPage();
                }));
              },
            ),
            ListTile(
              title: Text('Gráficos'),
              leading: Icon(Icons.image),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const GraficosPage();
                }));
              },
            ),
            ListTile(
              title: Text('Idioma'),
              leading: Icon(Icons.language),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const IdiomaPage();
                }));
              },
            ),
            ListTile(
              title: Text('Controles'),
              leading: Icon(Icons.gamepad),
              onTap: () {
              },
            ),
            // Otras opciones adicionales...
          ],
        ),
      ),
    );
  }
}