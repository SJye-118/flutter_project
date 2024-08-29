import 'package:flutter/material.dart';

class MediumDicScreen extends StatelessWidget {
  const MediumDicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medium Dictionary'),
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
                  '1) In the server hosting industry, IaaS stands for Infrastructure as a Service.',
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
                  '2) Apple Inc. was founded by Steve Jobs, Steve Wozniak, and Ronald Wayne.',
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
                  '3) Mystic Mansion is not an official development name for an Ubuntu release.',
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
                  '4) Whistler was the codename for Windows XP.',
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
                  '5) Mac OS was released before other operating systems in the options provided.',
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
                  '6) In the programming language Python, the statement print("Hello World") would display the string "Hello World" correctly.',
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
                  '7) The teapot often seen in many 3D modeling applications is called the Utah Teapot.',
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
                  "8) Nvidia's headquarters are based in Santa Clara.",
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
                  '9) LCD stands for Liquid Crystal Display.',
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
                  '10) Assembly is a low-level programming language.',
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
