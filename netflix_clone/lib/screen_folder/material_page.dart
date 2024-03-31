import 'package:flutter/material.dart';
import 'package:netflix_clone/splash_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartUpPage(),
    );
  }
}
