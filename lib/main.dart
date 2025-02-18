import 'package:flutter/material.dart';
import 'package:meditasionapp/page/page1/homepage.dart';

void main() {
  runApp(const MyApp());
}

// one aplications
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: '30nama',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
