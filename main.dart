import 'package:flutter/material.dart';
import 'package:flutter_application_1/splash.dart';

const SAVE_KEY_NAME = 'UserLoggedIn';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Package Fonts',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 255, 72, 0)
      ),
      home: screensplash(),
    );
    
  }
}