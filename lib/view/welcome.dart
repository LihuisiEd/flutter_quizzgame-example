import 'package:flutter/material.dart';
import 'package:lab09/view/options.dart';
import 'package:lab09/view/game.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Image.asset(
              'assets/imagenes/title.png',
              width: 180,
              height: 168,
            ),
            Image.asset(
              'assets/imagenes/honey.png',
              width: 180,
              height: 168,
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const GamePage();
                }));
              },
              child: Text('Jugar'),
            ),

            const SizedBox(height: 5),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const OptionsPage();
                }));
            }, child: Text('Opciones')),
            const SizedBox(height: 5),
            ElevatedButton(onPressed: () {}, child: Text('Donar millones')),
          ],
        ),
      ),
    );
  }
}
