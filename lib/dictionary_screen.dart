import 'package:flutter/material.dart';
import 'easy_dic.dart';
import 'medium_dic.dart';
import 'hard_dic.dart';

class DictionaryScreen extends StatelessWidget {
  final String name;
  final String email;
  final int bestScore;

  const DictionaryScreen({super.key, 
    required this.name,
    required this.email,
    required this.bestScore,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dictionary'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: [
            SizedBox(
              width: 200, // Set width for uniform size
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EasyDicScreen(),
                    ),
                  );
                },
                child: const Text('Easy Dictionary'),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: 200, // Set width for uniform size
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MediumDicScreen(),
                    ),
                  );
                },
                child: const Text('Medium Dictionary'),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: 200, // Set width for uniform size
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HardDicScreen(),
                    ),
                  );
                },
                child: const Text('Hard Dictionary'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
