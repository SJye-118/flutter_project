import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'trivia_service.dart';
import 'question.dart';
import 'result_screen.dart';
import 'login_screen.dart';
import 'theme.dart';
import 'firebase_options.dart'; // Import FirebaseOptions

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform, // Use FirebaseOptions
    );
    runApp(const MyApp());
  } catch (e) {
    print('Error initializing Firebase: $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const LoginScreen(),
    );
  }
}

class TriviaScreen extends StatefulWidget {
  final String name;
  final String email;
  final int bestScore;
  final int level;

  const TriviaScreen({
    super.key,
    required this.name,
    required this.email,
    required this.bestScore,
    required this.level,
  });

  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {
  late Future<List<Question>> _questionsFuture;
  List<Question>? _questions;
  int _currentQuestionIndex = 0;
  final Map<int, String?> _userAnswers = {};
  int _correctAnswersCount = 0;
  String? _feedback;
  bool _showNextButton = false;

  @override
  void initState() {
    super.initState();
    String difficulty = widget.level == 1
        ? 'easy'
        : widget.level == 2
            ? 'medium'
            : 'hard';
    _questionsFuture = fetchQuestions(difficulty);
  }

  Future<List<Question>> fetchQuestions(String difficulty) async {
    try {
      final triviaService = TriviaService();
      final data = await triviaService.fetchQuestions(difficulty: difficulty);
      return data.map<Question>((json) => Question.fromJson(json)).toList();
    } catch (e) {
      print('Error fetching questions: $e');
      return [];
    }
  }

  void _submitAnswer(String answer) {
    if (_questions != null && _questions!.isNotEmpty) {
      setState(() {
        _userAnswers[_currentQuestionIndex] = answer;

        if (answer == _questions![_currentQuestionIndex].correctAnswer) {
          _correctAnswersCount++;
          _feedback = 'Correct!';
        } else {
          _feedback =
              'Incorrect. The correct answer is: ${_questions![_currentQuestionIndex].correctAnswer}';
        }

        _showNextButton = true;
      });
    }
  }

  void _nextQuestion() {
    if (_questions != null && _questions!.isNotEmpty) {
      setState(() {
        if (_currentQuestionIndex < (_questions!.length - 1)) {
          _currentQuestionIndex++;
          _feedback = null;
          _showNextButton = false;
        } else {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => ResultScreen(
                correctAnswers: _correctAnswersCount,
                totalQuestions: _questions!.length,
                name: widget.name,
                email: widget.email,
                bestScore: widget.bestScore,
              ),
            ),
            (Route<dynamic> route) => route.isFirst,
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trivia Quiz - Level ${widget.level}'),
      ),
      body: FutureBuilder<List<Question>>(
        future: _questionsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            _questions = snapshot.data;
            final question = _questions![_currentQuestionIndex];

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Q${_currentQuestionIndex + 1}: ${question.question}',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  ...question.options.map((option) => ListTile(
                        title: Text(option),
                        leading: Radio<String>(
                          value: option,
                          groupValue: _userAnswers[_currentQuestionIndex],
                          onChanged: (value) {
                            if (value != null && !_showNextButton) {
                              _submitAnswer(value);
                            }
                          },
                        ),
                      )),
                  if (_feedback != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        _feedback!,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: _feedback!.startsWith('Correct')
                              ? Colors.green
                              : Colors.red,
                        ),
                      ),
                    ),
                  if (_showNextButton)
                    ElevatedButton(
                      onPressed: _nextQuestion,
                      child: const Text('Next'),
                    ),
                  if (_currentQuestionIndex == _questions!.length - 1 &&
                      !_showNextButton)
                    ElevatedButton(
                      onPressed: _nextQuestion,
                      child: const Text('Submit'),
                    ),
                ],
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
