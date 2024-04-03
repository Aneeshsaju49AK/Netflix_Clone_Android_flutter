import 'package:flutter/material.dart';
import 'package:netflix_clone/domain/api_key/constant_api.dart';
import 'package:netflix_clone/model/topRated_Movie_model.dart';

class ListBuilderScreen extends StatelessWidget {
  bool isGame;
  final AsyncSnapshot<List<TopRatedMovie>> snapshot;
  ListBuilderScreen({required this.snapshot, required this.isGame, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width / 1,
      height: height / 6,
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
                    decoration: BoxDecoration(),
                    // image: DecorationImage(
                    //     image: AssetImage("assets/Images/download.png"))),
                    child: Stack(
                      children: [
                        Image.network(
                            "${Constants.imagePath}${snapshot.data![index].posterPath}")
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
                      image: DecorationImage(
                        image: NetworkImage(
                            "${Constants.imagePath}${snapshot.data![index].posterPath}"),
                      ),
                    ),
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
