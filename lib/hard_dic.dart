import 'package:flutter/material.dart';

class HardDicScreen extends StatelessWidget {
  const HardDicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hard Dictionary'),
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
                  '1) Comprehensive documentation is not a key value of Agile software development.',
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
                  '2) The Super Nintendo Entertainment System (SNES) has an ADPCM Sampler sound chip.',
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
                  '3) The FILO (First In, Last Out) principle applies to a Stack data structure.',
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
                  '4) RAID 1 is associated with data mirroring.',
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
                  '5) The first company to use the term "Golden Master" was Apple.',
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
                  '6) The process that sends one qubit of information using two bits of classical information is called Quantum Teleportation.',
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
                  '7) The original author of the real-time physics engine called PhysX is NovodeX.',
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
                  "8) Neptune was an actual codename for a canceled Microsoft project.",
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
                  '9) America Online (AOL) started out as Quantum Link.',
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
                  '10) The ALU (Arithmetic Logic Unit) can be built using only NAND gates.',
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
