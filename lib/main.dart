//import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => ResumeApp();
}

bool _iconBool = false;

IconData lightMode = Icons.wb_sunny;
IconData darkMode = Icons.nights_stay;

ThemeData _lightTheme = ThemeData(
    primarySwatch: Colors.amber,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.amberAccent,
    ));

ThemeData _darkTheme =
    ThemeData(primarySwatch: Colors.red, brightness: Brightness.dark);

class ResumeApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: _iconBool ? _darkTheme : _lightTheme,
        home: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            title: const Text('resume'),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _iconBool = !_iconBool;
                  });
                },
                icon: Icon(_iconBool ? lightMode : darkMode),
              ),
            ],
          ),
        )));
  }
}
