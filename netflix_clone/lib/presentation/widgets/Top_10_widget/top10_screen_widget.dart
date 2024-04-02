import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/Text_Common/texthead_line.dart';
import 'package:netflix_clone/presentation/widgets/Top_10_widget/top_10_movies.dart';

class Top10ScreenWidget extends StatelessWidget {
  const Top10ScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width / 1,
      height: height / 3.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextHeadLine(
            label: "Top 10 Movies in india Today",
            heightSet: 25,
            widthset: 1,
            color: Colors.black,
          ),
          const Top10WidgetScreen(),
        ],
      ),
    );
  }
}
