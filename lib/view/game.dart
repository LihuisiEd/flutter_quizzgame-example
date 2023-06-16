import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int currentQuestionIndex = 0;
  int score = 0;
  List<Question> questions = [
    Question(
      question: '¿Cuál es la capital de Francia?',
      options: ['Londres', 'París', 'Madrid'],
      correctOptionIndex: 1,
    ),
    Question(
      question: '¿Cuál es el río más largo del mundo?',
      options: ['Nilo', 'Amazonas', 'Misisipi'],
      correctOptionIndex: 0,
    ),
    Question(
      question: '¿Quién pintó la Mona Lisa?',
      options: ['Pablo Picasso', 'Leonardo da Vinci', 'Vincent van Gogh'],
      correctOptionIndex: 1,
    ),
  ];

  void checkAnswer(int selectedOptionIndex) {
    if (selectedOptionIndex == questions[currentQuestionIndex].correctOptionIndex) {
      // Respuesta correcta
      setState(() {
        score += 100;
      });
    }

    // Pasar a la siguiente pregunta
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestionIndex >= questions.length) {
      // Se han respondido todas las preguntas
      return Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Fin del juego',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Puntaje final: $score',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Question currentQuestion = questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pregunta ${currentQuestionIndex + 1}:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              currentQuestion.question,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: currentQuestion.options.map((option) {
                int optionIndex = currentQuestion.options.indexOf(option);
                return ElevatedButton(
                  onPressed: () {
                    checkAnswer(optionIndex);
                  },
                  child: Text(option),
                  
                );
                
              }).toList(),
              
            ),
            
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Pasar a la siguiente pregunta sin seleccionar una opción
                checkAnswer(-1);
              },
              child: Text('Siguiente'),
            ),
          ],
        ),
      ),
    );
  }
}

class Question {
  final String question;
  final List<String> options;
  final int correctOptionIndex;

  Question({
    required this.question,
    required this.options,
    required this.correctOptionIndex,
  });
}
