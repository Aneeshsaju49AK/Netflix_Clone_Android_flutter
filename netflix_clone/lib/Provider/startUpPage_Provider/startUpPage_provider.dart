import 'package:flutter/material.dart';

class StartUpPageProvider extends ChangeNotifier {
  List<String> images = [
    "assets/Images/netflix-s.avif",
    "assets/Images/3d-cinema-film-projector_23-2151024840.avif",
    "assets/Images/view-3d-person-cinema-with-popcorn_23-2150720846.avif",
    "assets/Images/realistic-detailed-3d-red-cinema-chair-concept-include-tickets-star-vector-illustration-armchair_269504-3739.avif",
  ];
  List<String> message = [
    "Unlimited en \ntertainment,\none low price",
    "Download and \nwatch offline",
    "Cancel online \nat any time",
    "Watch \neverywhere",
  ];

  List<String> subMessage = [
    "All of Netflix, starting at just",
    "Always have something to",
    "Join today, no reason to wait",
    "Stream on your phone",
  ];

  List<String> subMessageUnder = [
    "\$149",
    "watch",
    "",
    "tablet, laptop, TV and more."
  ];
  late PageController controller;
  double currenIndex = 0;

  void initController() {
    controller = PageController(
      initialPage: 0,
    );
    controller.addListener(
      () {
        currenIndex = controller.page!;
        notifyListeners();
      },
    );
    notifyListeners();
  }
}
