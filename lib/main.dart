import 'package:flutter/material.dart';
import 'package:lesson1/viewscreen/start_screen.dart';

void main() {
  runApp(new Lesson1App());
}

class Lesson1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'anystring',
      routes: {
        'anystring': f1,
      }
    );
  }

}

Widget f1(BuildContext context) {
  return StartScreen();
}