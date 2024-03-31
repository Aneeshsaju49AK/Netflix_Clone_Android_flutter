import 'package:flutter/material.dart';
import 'package:netflix_clone/screen_folder/home_page.dart';
import 'package:netflix_clone/screen_folder/splash_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/Netflix_Home': (context) => NetflixHomePage(),
      },
      home: StartUpPage(),
    );
  }
}
