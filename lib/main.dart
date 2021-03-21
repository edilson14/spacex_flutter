import 'package:flutter/material.dart';
import 'package:space_x/src/views/home_view.dart';

void main() => runApp(SpaceX());

class SpaceX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline4: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
