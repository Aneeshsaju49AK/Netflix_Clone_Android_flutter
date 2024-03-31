import 'package:flutter/material.dart';
import 'package:netflix_clone/Provider/startUpPage_Provider/startUpPage_provider.dart';
import 'package:netflix_clone/material_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => StartUpPageProvider(),
        ),
      ],
      child: MainPage(),
    ),
  );
}
