import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  void _login(BuildContext context) async {
    final email = _emailController.text;
    final password = _passwordController.text;

    try {
      // Sign in using Firebase Authentication
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomeScreen(
            name: userCredential.user?.displayName ?? 'User',
            email: email,
            bestScore: 0, // Initialize best score to 0
          ),
        ),
      );
    } catch (e) {
      // Handle login error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login failed: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // Add your logo image here
              Image.asset(
                'android/assets/logo.jpeg', // Path to your logo image
                height: 90, // Adjust the height as needed
              ),
              const SizedBox(height: 10), // Space between image and text
              const Text(
                'Trivia Quiz App',
                style: TextStyle(
                  fontSize: 50, // Adjust the font size as needed
                  fontFamily: 'Times New Roman', // Set to Times New Roman
                  fontWeight: FontWeight.bold, // Make text bold
                ),
              ),
              const SizedBox(height: 40), // Space between text and text fields
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: _passwordController,
                obscureText: true, // Hide password input
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity, // Make button fill the width
                child: ElevatedButton(
                  onPressed: () => _login(context),
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 18, // Increase the font size
                      fontFamily: 'Roboto', // Change to your desired font
                      color: Colors.black,
                      fontWeight: FontWeight.bold, // Optional: make text bold
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
