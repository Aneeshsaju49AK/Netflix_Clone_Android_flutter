import 'package:flutter/material.dart';
import 'package:netflix_clone/Provider/netfilx_page_provider_folder/netflixHome_provider.dart';
import 'package:netflix_clone/Provider/startUpPage_Provider/startUpPage_provider.dart';
import 'package:netflix_clone/screen_folder/material_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => StartUpPageProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => NetflixHomePageProvider(),
        ),
      ],
      child: MainPage(),
    ),
  );
}
