import 'package:flutter/material.dart';
import 'welcome_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _submit() {
    final name = _nameController.text;
    final password = _passwordController.text;

    // Here you can add logic to verify the username and password
    // For now, it directly navigates to WelcomeScreen with a placeholder bestScore

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WelcomeScreen(
          name: name,
          email: '', // Email is not used, so we leave it empty
          bestScore: 0, // Initialize best score to 0
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true, // Hide password input
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submit,
              child: const Text('Log In'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreen(
                      name:
                          '', // Pass empty name if you want to go to WelcomeScreen directly
                      email:
                          '', // Pass empty email if you want to go to WelcomeScreen directly
                      bestScore: 0, // Initialize best score to 0
                    ),
                  ),
                );
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
