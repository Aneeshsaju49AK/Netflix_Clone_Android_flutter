import 'package:flutter/material.dart';
import 'package:netflix_clone/common_widget-folder/elivated_button_common.dart';
import 'package:netflix_clone/screen_folder/home_scrollable_listview.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.amber,
      width: width / 1,
      height: height / 0.5,
      child: Stack(
        children: [
          Container(
            color: Colors.blue,
            width: width / 1,
            height: height / 16,
            child: Row(
              children: [
                Image.asset(
                  "assets/Images/4375011_logo_netflix_icon.png",
                  scale: 10,
                ),
                SizedBox(
                  width: width / 1.4,
                ),
                Container(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: width / 1,
              height: height / .2,
              child: Stack(
                children: [
                  Positioned(
                    top: height / 15,
                    left: 10,
                    child: Container(
                      width: width / 1,
                      height: height / 16,
                      color: Colors.cyan,
                      child: Row(
                        children: [
                          ElevatedButtonCommon(
                            labelName: "TV Shows",
                            heightCustom: 18,
                            widthcustom: 3.8,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButtonCommon(
                            labelName: "Movies",
                            heightCustom: 18,
                            widthcustom: 4.8,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButtonCommon(
                            labelName: "Categories",
                            heightCustom: 18,
                            widthcustom: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: height / 7,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 17,
                        right: 10,
                      ),
                      child: Container(
                        width: width / 1.1,
                        height: height / 1.6,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/Images/realistic-detailed-3d-red-cinema-chair-concept-include-tickets-star-vector-illustration-armchair_269504-3739.avif"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height / 1.3,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Container(
                        color: Colors.brown,
                        height: height / .2,
                        child: Column(
                          children: [
                            ListViewScreen(
                              isGameFalse: true,
                              label: "Top Searches",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "Mobile Games",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "Downloads For You",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "Because you watched 6 Underground",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "TV Shows",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "Trending Now",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "Continue Watching for",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "Asian TV Shows",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "Only on Netflix",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "New Releases",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "US TV Shows",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "Award-Winning TV Shows",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "Popular on Netflix",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "Hindi Movies & TV",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "Korean TV Shows",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "Movies set in India",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "Made in Korea",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListViewScreen(
                              isGameFalse: true,
                              label: "Gritty Action & Adventure Movies",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Positioned(
                  //   top: height / 1,
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(
                  //       top: 10,
                  //     ),
                  //     child: ListViewScreen(
                  //       isGameFalse: false,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
