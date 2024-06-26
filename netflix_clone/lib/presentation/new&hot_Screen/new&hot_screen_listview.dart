import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/Text_Common/texthead_line.dart';

class ListViewNewAnHot extends StatelessWidget {
  const ListViewNewAnHot({super.key});

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return SizedBox(
          width: width / 1,
          height: height / 1.9,
          child: Row(
            children: [
              SizedBox(
                width: width / 6,
                height: height / 1.9,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      right: 4,
                      child: TextHeadLine(
                        label: "APR",
                        heightSet: 18,
                        widthset: 5,
                        color: Colors.white,
                        size: 13,
                        weight: FontWeight.w600,
                      ),
                    ),
                    Positioned(
                      top: 35,
                      right: 1,
                      child: TextHeadLine(
                        label: "19",
                        heightSet: 18,
                        widthset: 5,
                        color: Colors.white,
                        size: 30,
                        weight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: width / 1.2,
                height: height / 1.9,
                child: Column(
                  children: [
                    Container(
                      width: width / 1.2,
                      height: height / 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("assets/Images/images (2).jpeg"),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: width / 1.2,
                      height: height / 11,
                      child: Row(
                        children: [
                          Container(
                            width: width / 2.4,
                            height: height / 11,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Images/3d-cinema-film-projector_23-2151024840.avif"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            width: width / 5,
                            height: height / 11,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 5,
                                  right: 20,
                                  child: Icon(
                                    Icons.alarm_add_sharp,
                                    size: 30,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  right: -2,
                                  child: TextHeadLine(
                                    label: "Remind Me",
                                    heightSet: 18,
                                    widthset: 4,
                                    color: Colors.white,
                                    size: 13,
                                    weight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width / 5,
                            height: height / 11,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 5,
                                  right: 20,
                                  child: Icon(
                                    Icons.info,
                                    size: 30,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 5,
                                  child: TextHeadLine(
                                    label: "info",
                                    heightSet: 18,
                                    widthset: 4,
                                    color: Colors.white,
                                    size: 13,
                                    weight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width / 1.2,
                      height: height / 5.7,
                      child: Stack(
                        children: [
                          FittedBox(
                            child: TextHeadLine(
                              label: "coming on 19 April",
                              heightSet: 18,
                              widthset: 1,
                              color: Colors.white,
                              size: 20,
                              weight: FontWeight.w700,
                            ),
                          ),
                          Positioned(
                            top: 30,
                            child: SizedBox(
                              width: width / 1,
                              height: height / 10,
                            ),
                          ),
                          Positioned(
                            top: 105,
                            child: SizedBox(
                              width: width / 1,
                              height: height / 28,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
