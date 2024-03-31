import 'package:flutter/material.dart';
import 'package:netflix_clone/Provider/netfilx_page_provider_folder/netflixHome_provider.dart';
import 'package:provider/provider.dart';

class NavigationContainer extends StatelessWidget {
  const NavigationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    /** build a separate bottom navigation bar
     * from use in different widget
     */
    return BottomNavigationBar(
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.gamepad),
          label: "Games",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie),
          label: "New & Hot",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "My Netflix",
        ),
      ],
      currentIndex: Provider.of<NetflixHomePageProvider>(context).selectedIndex,
      selectedItemColor: Colors.white,
      onTap: Provider.of<NetflixHomePageProvider>(context).onItemTapped,
    );
  }
}
