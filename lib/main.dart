import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/RandomFraseScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frases de Natal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RandomFraseScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
