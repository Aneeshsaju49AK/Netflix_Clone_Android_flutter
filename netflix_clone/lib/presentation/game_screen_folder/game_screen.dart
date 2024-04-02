import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/ListView_widget/home_scrollable_listview.dart';
import 'package:netflix_clone/presentation/widgets/Text_Common/texthead_line.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width / 1,
          height: height / .3,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Positioned(
                  top: height / 11,
                  child: Container(
                    width: width / 1,
                    height: height / .3,
                    child: Stack(
                      children: [
                        Positioned(
                          top: height / 1600,
                          child: Container(
                            width: width / 1,
                            height: height / 1.6,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Images/3d-cinema-film-projector_23-2151024840.avif"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Positioned(
                          top: height / 1600,
                          child: Container(
                            width: width / 1,
                            height: height / 1.6,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4)),
                          ),
                        ),
                        Positioned(
                          top: height / 2.2,
                          child: Container(
                            width: width / 1,
                            height: height / 5.9,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: TextHeadLine(
                                    label: "Townsmen - A Kingdom",
                                    heightSet: 20,
                                    widthset: 1.1,
                                    size: 23,
                                    weight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 120),
                                  child: TextHeadLine(
                                    label: "Rebuilt",
                                    heightSet: 20,
                                    widthset: 1.1,
                                    size: 23,
                                    weight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    FittedBox(
                                      child: TextHeadLine(
                                        label: "Rebuilt",
                                        heightSet: 20,
                                        widthset: 5.7,
                                        size: 13,
                                        weight: FontWeight.w300,
                                        color: Colors.white,
                                      ),
                                    ),
                                    FittedBox(
                                      child: TextHeadLine(
                                        label: "Rebuilt",
                                        heightSet: 20,
                                        widthset: 5,
                                        size: 13,
                                        weight: FontWeight.w300,
                                        color: Colors.white,
                                        icon: Icon(Icons.face),
                                        iconSize: 10,
                                      ),
                                    ),
                                    FittedBox(
                                      child: TextHeadLine(
                                        label: "Rebuilt",
                                        heightSet: 20,
                                        widthset: 5,
                                        size: 13,
                                        weight: FontWeight.w300,
                                        color: Colors.white,
                                        icon: Icon(Icons.face),
                                        iconSize: 10,
                                      ),
                                    ),
                                    FittedBox(
                                      child: TextHeadLine(
                                        label: "Rebuilt",
                                        heightSet: 20,
                                        widthset: 5,
                                        size: 13,
                                        weight: FontWeight.w300,
                                        color: Colors.white,
                                        icon: Icon(Icons.face),
                                        iconSize: 10,
                                      ),
                                    ),
                                    FittedBox(
                                      child: TextHeadLine(
                                        label: "Rebuilt",
                                        heightSet: 20,
                                        widthset: 5,
                                        size: 13,
                                        weight: FontWeight.w300,
                                        color: Colors.white,
                                        icon: Icon(Icons.face),
                                        iconSize: 10,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: height / 1.6,
                          child: Container(
                            color: Colors.black.withOpacity(0.6),
                            width: width / 1,
                            height: height / 4.8,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: TextHeadLine(
                                    label: "Continue Playing",
                                    heightSet: 20,
                                    widthset: 1.1,
                                    size: 20,
                                    weight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 80),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: width / 1.4,
                                    height: height / 8,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: width / 3.5,
                                            height: height / 9,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/Images/images (2).jpeg"),
                                                    fit: BoxFit.fill),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width / 2.7,
                                          height: height / 13,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 40),
                                                child: FittedBox(
                                                  child: TextHeadLine(
                                                    label: "Word Trails",
                                                    heightSet: 40,
                                                    widthset: 3.3,
                                                    size: 17,
                                                    weight: FontWeight.w700,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              FittedBox(
                                                child: TextHeadLine(
                                                  label: "Download On This",
                                                  heightSet: 38,
                                                  widthset: 2.5,
                                                  size: 13,
                                                  weight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 70),
                                                child: TextHeadLine(
                                                  label: "Device",
                                                  heightSet: 40,
                                                  widthset: 5,
                                                  size: 13,
                                                  weight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: height / 1.2,
                          child: Container(
                            width: width / 1,
                            height: height / .3,
                            child: Column(
                              children: [
                                ListViewScreen(
                                  isGameFalse: false,
                                  label: "Top Searches",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListViewScreen(
                                  isGameFalse: false,
                                  label: "Top Searches",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListViewScreen(
                                  isGameFalse: false,
                                  label: "Top Searches",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListViewScreen(
                                  isGameFalse: false,
                                  label: "Top Searches",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListViewScreen(
                                  isGameFalse: false,
                                  label: "Top Searches",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListViewScreen(
                                  isGameFalse: false,
                                  label: "Top Searches",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListViewScreen(
                                  isGameFalse: false,
                                  label: "Top Searches",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListViewScreen(
                                  isGameFalse: false,
                                  label: "Top Searches",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListViewScreen(
                                  isGameFalse: false,
                                  label: "Top Searches",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListViewScreen(
                                  isGameFalse: false,
                                  label: "Top Searches",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: width / 1,
                height: height / 11,
                color: Colors.black.withOpacity(0.8),
                child: Row(
                  children: [
                    SizedBox(
                      width: width / 3,
                      height: height / 16,
                      child: Center(
                        child: TextHeadLine(
                          label: "Games",
                          heightSet: 20,
                          widthset: 1.1,
                          size: 23,
                          weight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 2,
                    ),
                    SizedBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
