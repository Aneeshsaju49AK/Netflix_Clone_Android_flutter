import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/ListView_widget/listview_screen.dart';
import 'package:netflix_clone/presentation/widgets/Text_Common/texthead_line.dart';

class ListViewScreen extends StatelessWidget {
  bool isGameFalse;
  String label;
  ListViewScreen({required this.label, required this.isGameFalse, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width / 1,
      height: height / 4.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextHeadLine(
            label: label,
            widthset: 1,
            heightSet: 25,
            size: 18,
            weight: FontWeight.w700,
            color: Colors.black,
          ),
          ListBuilderScreen(
            isGame: isGameFalse,
          ),
        ],
      ),
    );
  }
}
