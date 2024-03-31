import 'package:flutter/material.dart';
import 'package:netflix_clone/screen_folder/game_screen.dart';
import 'package:netflix_clone/screen_folder/home_page.dart';
import 'package:netflix_clone/screen_folder/nwe&hot_screen.dart';
import 'package:netflix_clone/screen_folder/splash_screen.dart';

class NetflixHomePageProvider extends ChangeNotifier {
  int selectedIndex = 0;

  List<Widget> widgetOptions = [
    StartUpPage(),
    GamesScreen(),
    NewHotScreen(),
    StartUpPage(),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
