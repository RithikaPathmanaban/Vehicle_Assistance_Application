import 'package:flutter/material.dart';
import 'package:vehicle_mehanic/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins', // Use Poppins font
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.blueAccent, // Darker blue for app bar
          elevation: 0, // Remove shadow for a clean look
        ),
      ),
      home: HomeScreen(),
    );
  }
}
