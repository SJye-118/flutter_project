import 'package:flutter/material.dart';
import 'welcome_screen.dart';

class ResultScreen extends StatelessWidget {
  final int correctAnswers;
  final int totalQuestions;
  final String name;
  final String email;
  final int bestScore;

  const ResultScreen({super.key, 
    required this.correctAnswers,
    required this.totalQuestions,
    required this.name,
    required this.email,
    required this.bestScore,
  });

  @override
  Widget build(BuildContext context) {
    final isTriviaMaster = correctAnswers == totalQuestions;
    final isTriviaNoob = !isTriviaMaster;
    final updatedName = isTriviaMaster
        ? (name.startsWith('Trivia Master') ? name : 'Trivia Master $name')
        : (name.startsWith('Trivia Noob') ? name : 'Trivia Noob $name');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Results'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You got $correctAnswers out of $totalQuestions correct!',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              if (isTriviaMaster)
                const Text(
                  'Congratulations! You are a Trivia Master!',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                  textAlign: TextAlign.center,
                )
              else if (isTriviaNoob)
                const Text(
                  'Don\'t worry, you can do better next time!',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomeScreen(
                        name: updatedName,
                        email: email,
                        bestScore: correctAnswers > bestScore
                            ? correctAnswers
                            : bestScore,
                      ),
                    ),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text('Back to Welcome Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
