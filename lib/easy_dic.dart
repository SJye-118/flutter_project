import 'package:flutter/material.dart';

class EasyDicScreen extends StatelessWidget {
  const EasyDicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy Dictionary'),
      ),
      body: Stack(
        children: [
          // Scrollable content
          Padding(
            padding: const EdgeInsets.only(
                bottom: 60.0), // Padding to prevent overlap with button
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: const [
                Text(
                  '1) The C programming language was created by the American computer scientist Dennis Ritchie.',
                  style: TextStyle(
                    fontSize: 20.0, // Adjust this value to make the text larger
                  ),
                ),
                SizedBox(height: 15),
                Divider(
                  color: Colors.black, // Color of the line
                  thickness: 1.0,
                ),
                SizedBox(height: 15),
                Text(
                  '2) In the programming language Java, the keyword Final is used on a variable to ensure it cannot be modified.',
                  style: TextStyle(
                    fontSize: 20.0, // Adjust this value to make the text larger
                  ),
                ),
                SizedBox(height: 15),
                Divider(
                  color: Colors.black, // Color of the line
                  thickness: 1.0,
                ),
                SizedBox(height: 15),
                Text(
                  '3) In web design, CSS stands for Cascading Style Sheet.',
                  style: TextStyle(
                    fontSize: 20.0, // Adjust this value to make the text larger
                  ),
                ),
                SizedBox(height: 15),
                Divider(
                  color: Colors.black, // Color of the line
                  thickness: 1.0,
                ),
                SizedBox(height: 15),
                Text(
                  '4) The Django framework is associated with the programming language Python.',
                  style: TextStyle(
                    fontSize: 20.0, // Adjust this value to make the text larger
                  ),
                ),
                SizedBox(height: 15),
                Divider(
                  color: Colors.black, // Color of the line
                  thickness: 1.0,
                ),
                SizedBox(height: 15),
                Text(
                  '5) According to the International System of Units, a kilobyte of RAM contains 1000 bytes.',
                  style: TextStyle(
                    fontSize: 20.0, // Adjust this value to make the text larger
                  ),
                ),
                SizedBox(height: 15),
                Divider(
                  color: Colors.black, // Color of the line
                  thickness: 1.0,
                ),
                SizedBox(height: 15),
                Text(
                  '6) Apple was established on April 1st, 1976, by Steve Jobs, Steve Wozniak, and Ronald Wayne.',
                  style: TextStyle(
                    fontSize: 20.0, // Adjust this value to make the text larger
                  ),
                ),
                SizedBox(height: 15),
                Divider(
                  color: Colors.black, // Color of the line
                  thickness: 1.0,
                ),
                SizedBox(height: 15),
                Text(
                  '7) The code name for the mobile operating system Android 7.0 is Nougat.',
                  style: TextStyle(
                    fontSize: 20.0, // Adjust this value to make the text larger
                  ),
                ),
                SizedBox(height: 15),
                Divider(
                  color: Colors.black, // Color of the line
                  thickness: 1.0,
                ),
                SizedBox(height: 15),
                Text(
                  '8) In computing, LAN stands for Local Area Network.',
                  style: TextStyle(
                    fontSize: 20.0, // Adjust this value to make the text larger
                  ),
                ),
                SizedBox(height: 15),
                Divider(
                  color: Colors.black, // Color of the line
                  thickness: 1.0,
                ),
                SizedBox(height: 15),
                Text(
                  '9) The series of Intel HD graphics succeeding the 5000 and 6000 series (Broadwell) is called HD Graphics 500.',
                  style: TextStyle(
                    fontSize: 20.0, // Adjust this value to make the text larger
                  ),
                ),
                SizedBox(height: 15),
                Divider(
                  color: Colors.black, // Color of the line
                  thickness: 1.0,
                ),
                SizedBox(height: 15),
                Text(
                  '10) 8 bits commonly equal one byte.',
                  style: TextStyle(
                    fontSize: 20.0, // Adjust this value to make the text larger
                  ),
                ),
                SizedBox(height: 15),
                Divider(
                  color: Colors.black, // Color of the line
                  thickness: 1.0,
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
          // Fixed button at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Define the action to be performed when the button is pressed
                  Navigator.pop(
                      context); // Example action: Go back to the previous screen
                },
                child: const Text('Continue'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
