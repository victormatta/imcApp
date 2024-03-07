import 'package:flutter/material.dart';
import 'main_screen.dart';

void main () {
  runApp(const IMCApp());
}

class IMCApp extends StatelessWidget {
  const IMCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}