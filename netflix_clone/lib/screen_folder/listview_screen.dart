import 'package:flutter/material.dart';

class ListBuilderScreen extends StatelessWidget {
  bool isGame;

  ListBuilderScreen({required this.isGame, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    return Container(
      width: width / 1,
      height: height / 6,
      color: Colors.yellow,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return isGame
              ? Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: width / 13,
                    height: height / 6.5,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: AssetImage("assets/Images/download.png"))),
                    child: Stack(
                      children: [
                        Text("hi"),
                      ],
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: width / 13,
                    height: height / 6.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                        image: DecorationImage(
                            image: AssetImage("assets/Images/download.png"))),
                    child: Stack(
                      children: [
                        Text("hi"),
                      ],
                    ),
                  ),
                );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
      ),
    );
  }
}
