import 'package:flutter/material.dart';

class IdiomaPage extends StatefulWidget {
  const IdiomaPage({Key? key}) : super(key: key);

  @override
  State<IdiomaPage> createState() => _IdiomaPageState();
}

class _IdiomaPageState extends State<IdiomaPage> {
  String selectedLanguage = 'English';

  void changeLanguage(String language) {
    setState(() {
      selectedLanguage = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Idiomas del juego'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selecciona tu idioma:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              title: Text('Ingles'),
              leading: Radio<String>(
                value: 'English',
                groupValue: selectedLanguage,
                onChanged: (value) {
                  changeLanguage(value!);
                },
              ),
            ),
            ListTile(
              title: Text('Español'),
              leading: Radio<String>(
                value: 'Spanish',
                groupValue: selectedLanguage,
                onChanged: (value) {
                  changeLanguage(value!);
                },
              ),
            ),
            ListTile(
              title: Text('Francés'),
              leading: Radio<String>(
                value: 'French',
                groupValue: selectedLanguage,
                onChanged: (value) {
                  changeLanguage(value!);
                },
              ),
            ),
            ListTile(
              title: Text('Alemán'),
              leading: Radio<String>(
                value: 'German',
                groupValue: selectedLanguage,
                onChanged: (value) {
                  changeLanguage(value!);
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, selectedLanguage);
              },
              child: Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
