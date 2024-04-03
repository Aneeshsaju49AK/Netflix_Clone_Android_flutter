import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/ListView_widget/listview_screen.dart';
import 'package:netflix_clone/presentation/widgets/Text_Common/texthead_line.dart';

class MyNetflixScreen extends StatelessWidget {
  const MyNetflixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SizedBox(
        width: width / 1,
        height: height / 1,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                width: width / 1,
                height: height / .7,
                child: Column(
                  children: [
                    SizedBox(
                      width: width / 1,
                      height: height / 2.2,
                      child: Stack(
                        children: [
                          Positioned(
                            top: height / 8,
                            left: width / 2.5,
                            child: Container(
                              width: width / 4.5,
                              height: height / 9.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Images/images (3).jpeg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: height / 4.3,
                            left: width / 9,
                            child: SizedBox(
                              width: width / 1.3,
                              height: height / 21,
                              child: TextHeadLine(
                                label: "aneeshsaju73@gmail",
                                heightSet: 21,
                                widthset: 1.3,
                                color: Colors.white,
                                size: 25,
                                weight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Positioned(
                            top: height / 3.4,
                            left: width / 21,
                            child: Container(
                              width: width / 1.1,
                              height: height / 6.5,
                              color: Colors.orange,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width / 1,
                      height: height / 1.1,
                      child: ListView.builder(
                        physics:
                            NeverScrollableScrollPhysics(), // Set physics to NeverScrollableScrollPhysics

                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              TextHeadLine(
                                label: "hi",
                                heightSet: 16,
                                widthset: 1,
                                color: Colors.white,
                                size: 23,
                                weight: FontWeight.w700,
                              ),
                              // ListBuilderScreen(isGame: false ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: width / 1,
              height: height / 9,
              color: Colors.black.withOpacity(0.8),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: width / 2.7,
                        height: height / 10,
                        child: Center(
                          child: TextHeadLine(
                            label: "My Netflix",
                            heightSet: 20,
                            widthset: 1.1,
                            size: 23,
                            weight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width / 3.2,
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
