import 'dart:convert';
import 'package:http/http.dart' as http;

class TriviaService {
  final String baseUrlEasy =
      'https://opentdb.com/api.php?amount=10&category=18&difficulty=easy&type=multiple';
  final String baseUrlMedium =
      'https://opentdb.com/api.php?amount=10&category=18&difficulty=medium&type=multiple';
  final String baseUrlHard =
      'https://opentdb.com/api.php?amount=10&category=18&difficulty=hard&type=multiple';

  Future<List<dynamic>> fetchQuestions({required String difficulty}) async {
    final String url;
    switch (difficulty) {
      case 'medium':
        url = baseUrlMedium;
        break;
      case 'hard':
        url = baseUrlHard;
        break;
      case 'easy':
      default:
        url = baseUrlEasy;
    }

    try {
      final startTime = DateTime.now();
      final response = await http.get(Uri.parse(url));
      final endTime = DateTime.now();
      print('Fetching questions from: $url');
      print('Request took: ${endTime.difference(startTime).inMilliseconds} ms');
      print('Response status: ${response.statusCode}');

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data.containsKey('results')) {
          print('Fetched ${data['results'].length} questions');
          return data['results'] as List<dynamic>;
        } else {
          print('Unexpected response format: $data');
          throw Exception('Unexpected response format');
        }
      } else {
        print('Error response body: ${response.body}');
        throw Exception('Failed to load questions');
      }
    } catch (e) {
      print('Error fetching questions: $e');
      rethrow;
    }
  }
}
