import 'package:disney_characters_app/src/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.teal
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personajes de Disney'),
        ),
        body: const Center(
          child: Home(),
        ),
      ),
    );
  }
}