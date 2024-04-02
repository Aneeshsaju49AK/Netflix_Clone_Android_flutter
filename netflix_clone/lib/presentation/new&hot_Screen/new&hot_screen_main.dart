import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/ElevatedButtomCustom/elivated_button_common.dart';
import 'package:netflix_clone/presentation/new&hot_Screen/new&hot_screen_listview.dart';
import 'package:netflix_clone/presentation/widgets/Text_Common/texthead_line.dart';

class NewAANDHotScreen extends StatelessWidget {
  const NewAANDHotScreen({super.key});

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
            Container(
              width: width / 1,
              height: height / 6,
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
                            label: "New & Hot",
                            heightSet: 20,
                            widthset: 1.1,
                            size: 23,
                            weight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width / 2.2,
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          ElevatedButtonCommon(
                            labelName: "Comming Soon",
                            heightCustom: 18,
                            widthcustom: 3.1,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ElevatedButtonCommon(
                            labelName: "Everyone's Watching",
                            heightCustom: 18,
                            widthcustom: 2.4,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ElevatedButtonCommon(
                            labelName: "Games",
                            heightCustom: 18,
                            widthcustom: 3.8,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ElevatedButtonCommon(
                            labelName: "Top 10 TV Shows",
                            heightCustom: 18,
                            widthcustom: 2.4,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ElevatedButtonCommon(
                            labelName: "Top 10 TV Movies",
                            heightCustom: 18,
                            widthcustom: 2.4,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: height / 6,
              child: SizedBox(
                  height: height / 1,
                  width: width / 1,
                  child: ListViewNewAnHot()),
            ),
          ],
        ),
      ),
    );
  }
}
