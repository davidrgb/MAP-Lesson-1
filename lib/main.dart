import 'package:flutter/material.dart';
import 'package:lesson1/viewscreen/materialdesign_screen.dart';
import 'package:lesson1/viewscreen/start_screen.dart';

void main() {
  runApp(new Lesson1App());
}

class Lesson1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (BuildContext context) => StartScreen(),
        MaterialDesignScreen.routeName: (BuildContext context) => MaterialDesignScreen(),
      },
    );
  }
}
