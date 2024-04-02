import 'package:flutter/material.dart';

class Top10WidgetScreen extends StatelessWidget {
  const Top10WidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width / 1,
      height: height / 4.5,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: height / 5,
              child: Stack(
                children: [
                  SizedBox(
                    height: height / 4.5,
                    width: width / 2,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 55,
                      ),
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(
                          fontSize: 120,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 60,
                    child: Container(
                      height: height / 4.5,
                      width: width / 3.6,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/Images/netflix-s.avif",
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                  )
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
