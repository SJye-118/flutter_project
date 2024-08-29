import 'package:flutter/material.dart';
import 'trivia_screen.dart';

class LevelSelectionScreen extends StatelessWidget {
  const LevelSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Quiz Level'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TriviaScreen(
                      name: 'User', // Pass relevant user details here
                      email: '',
                      bestScore: 0,
                      level: 1, difficulty: 'easy', // Level 1
                    ),
                  ),
                );
              },
              child: const Text('Level 1'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TriviaScreen(
                      name: 'User', // Pass relevant user details here
                      email: '',
                      bestScore: 0,
                      level: 2, difficulty: 'medium', // Level 2
                    ),
                  ),
                );
              },
              child: const Text('Level 2'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TriviaScreen(
                      name: 'User', // Pass relevant user details here
                      email: '',
                      bestScore: 0,
                      level: 3, difficulty: 'hard', // Level 3
                    ),
                  ),
                );
              },
              child: const Text('Level 3'),
            ),
          ],
        ),
      ),
    );
  }
}
