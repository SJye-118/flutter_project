import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      colorScheme: const ColorScheme.light(
        primary: Colors.blueAccent,
        secondary: Colors.orangeAccent,
      ),
      scaffoldBackgroundColor: Colors.white, // Background color for Scaffold
      fontFamily: 'Roboto',
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black), // headline1
        titleLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black), // headline6
        bodyMedium: TextStyle(fontSize: 14.0, color: Colors.black), // bodyText2
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent, // Button background color
          foregroundColor: Colors.white, // Button text color
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blueAccent, // AppBar background color
        titleTextStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white), // AppBar title
        iconTheme: IconThemeData(color: Colors.white), // AppBar icon color
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: Colors.grey, 
        secondary: Colors.blueAccent,
      ),
      scaffoldBackgroundColor: Colors.black, // Background color for Scaffold
      fontFamily: 'Roboto',
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white), // headline1
        titleLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white), // headline6
        bodyMedium: TextStyle(fontSize: 14.0, color: Colors.white), // bodyText2
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent, // Button background color
          foregroundColor: Colors.white, // Button text color
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.grey, // AppBar background color
        titleTextStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white), // AppBar title
        iconTheme: IconThemeData(color: Colors.white), // AppBar icon color
      ),
    );
  }
}
