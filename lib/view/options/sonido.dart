import 'package:flutter/material.dart';

class SonidoPage extends StatefulWidget {
  const SonidoPage({super.key});

  @override
  State<SonidoPage> createState() => _SonidoPageState();
}

class _SonidoPageState extends State<SonidoPage> {
  double musicVolume = 0.5;
  double soundVolume = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opciones de Sonido'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('Volumen de la música'),
              subtitle: Slider(
                value: musicVolume,
                min: 0.0,
                max: 1.0,
                onChanged: (value) {
                  setState(() {
                    musicVolume = value;
                  });
                },
              ),
              trailing: Text('${(musicVolume * 100).round()}%'),
            ),
            ListTile(
              title: Text('Volumen del sonido'),
              subtitle: Slider(
                value: soundVolume,
                min: 0.0,
                max: 1.0,
                onChanged: (value) {
                  setState(() {
                    soundVolume = value;
                  });
                },
              ),
              trailing: Text('${(soundVolume * 100).round()}%'),
            ),
          ],
        ),
      ),
    );
  }
}