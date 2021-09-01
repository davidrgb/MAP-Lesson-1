import 'package:flutter/material.dart';
import 'package:lesson1/viewscreen/image_screen.dart';
import 'package:lesson1/viewscreen/materialdesign_screen.dart';
import 'package:lesson1/viewscreen/start_screen.dart';

void main() {
  runApp(new Lesson1App());
}

class Lesson1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red[800],
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 64.0,
            color: Colors.teal,
          ),
        ),
      ),
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (BuildContext context) => StartScreen(),
        MaterialDesignScreen.routeName: (BuildContext context) => MaterialDesignScreen(),
        ImageScreen.routeName: (BuildContext context) => ImageScreen(),
      },
    );
  }
}
