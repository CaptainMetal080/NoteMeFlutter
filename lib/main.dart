import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoteMe',
      theme: ThemeData(primarySwatch: Colors.cyan),// Set Theme Color
      home: HomeScreen(), // Set HomeScreen as the starting
    );
  }
}
