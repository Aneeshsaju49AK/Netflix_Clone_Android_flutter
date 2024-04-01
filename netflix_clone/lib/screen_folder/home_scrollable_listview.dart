import 'package:flutter/material.dart';
import 'package:netflix_clone/screen_folder/listview_screen.dart';
import 'package:netflix_clone/screen_folder/texthead_line.dart';

class ListViewScreen extends StatelessWidget {
  bool isGameFalse;
  String label;
  ListViewScreen({required this.label, required this.isGameFalse, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    return Container(
      width: width / 1,
      height: height / 4.5,
      color: Colors.deepPurple,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextHeadLine(
            label: label,
          ),
          ListBuilderScreen(
            isGame: isGameFalse,
          ),
        ],
      ),
    );
  }
}
