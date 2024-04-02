import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/MyNetflix_Screen/my_Netflix_Screen.dart';
import 'package:netflix_clone/presentation/game_screen_folder/game_screen.dart';
import 'package:netflix_clone/presentation/Home_Screen_floder/home_main_screen.dart';
import 'package:netflix_clone/presentation/new&hot_Screen/new&hot_screen_main.dart';

class NetflixHomePageProvider extends ChangeNotifier {
  int selectedIndex = 0;

  List<Widget> widgetOptions = [
    HomePageScreen(),
    GamesScreen(),
    NewAANDHotScreen(),
    MyNetflixScreen(),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
