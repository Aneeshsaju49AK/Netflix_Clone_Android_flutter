import 'package:flutter/material.dart';
import 'package:netflix_clone/Provider/netfilx_page_provider_folder/netflixHome_provider.dart';
import 'package:provider/provider.dart';

import '../common_widget-folder/Navigation_bar.dart';

class NetflixHomePage extends StatelessWidget {
  const NetflixHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Consumer<NetflixHomePageProvider>(
          builder: (context, value, _) {
            return Container(
              width: width / 1,
              height: height / 1,
              color: Colors.amber,
              child: value.widgetOptions.elementAt(value.selectedIndex),
            );
          },
        ),
      ),
      bottomNavigationBar: NavigationContainer(),
      // bottomNavigationBar: BottomNavigationBar(
      //   showUnselectedLabels: true,
      //   unselectedItemColor: Colors.grey,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //       backgroundColor: Colors.black,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: "Games",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: "New & Hot",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: "My Netflix",
      //     ),
      //   ],
      //   currentIndex:
      //       Provider.of<NetflixHomePageProvider>(context).selectedIndex,
      //   selectedItemColor: Colors.white,
      //   onTap: Provider.of<NetflixHomePageProvider>(context).onItemTapped,
      // ),
    );
  }
}
