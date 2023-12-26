// main.dart
import 'package:bitesy/screens/home_screen.dart';
import 'package:bitesy/screens/recipe_detail.dart';
import 'package:bitesy/screens/splash_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
