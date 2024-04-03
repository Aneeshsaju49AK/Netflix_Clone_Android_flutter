import 'package:flutter/material.dart';
import 'package:netflix_clone/Provider/api_Provider.dart';
import 'package:netflix_clone/model/topRated_Movie_model.dart';
import 'package:netflix_clone/presentation/widgets/ListView_widget/listview_screen.dart';
import 'package:netflix_clone/presentation/widgets/Text_Common/texthead_line.dart';
import 'package:provider/provider.dart';

class ListViewScreen extends StatelessWidget {
  bool isGameFalse;
  String label;
  ListViewScreen({required this.label, required this.isGameFalse, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;

    final auth = Provider.of<Api>(context, listen: false);

    auth.initList();
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
          FutureBuilder(
            future: auth.topratedMovie,
            builder: (context, AsyncSnapshot<List<TopRatedMovie>> snapshot) {
              auth.getDataFromAPI();
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.hasError.toString()),
                );
              } else if (snapshot.hasData) {
                final data = snapshot.data;
                return ListBuilderScreen(
                  isGame: false,
                  snapshot: snapshot,
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
