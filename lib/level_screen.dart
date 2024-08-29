import 'package:flutter/material.dart';
import 'trivia_service.dart';
import 'question.dart';

class LevelScreen extends StatefulWidget {
  final String name;
  final String email;
  final int bestScore;
  final int level;

  const LevelScreen({
    super.key,
    required this.name,
    required this.email,
    required this.bestScore,
    required this.level,
  });

  @override
  _LevelScreenState createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  late Future<List<Question>> _questionsFuture;

  @override
  void initState() {
    super.initState();
    String difficulty = widget.level == 1 ? 'easy' : 'medium';
    _questionsFuture = fetchQuestions(difficulty: difficulty);
  }

  Future<List<Question>> fetchQuestions({required String difficulty}) async {
    final triviaService = TriviaService();
    final data = await triviaService.fetchQuestions(difficulty: difficulty);
    return data.map<Question>((json) => Question.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level ${widget.level} Dictionary'),
      ),
      body: FutureBuilder<List<Question>>(
        future: _questionsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final questions = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  final question = questions[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${index + 1}. ${question.question}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Answer: ${question.correctAnswer}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
