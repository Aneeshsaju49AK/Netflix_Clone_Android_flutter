import 'package:flutter/material.dart';

class TextHeadLine extends StatelessWidget {
  String label;
  TextHeadLine({required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.blue,
      width: width / 1,
      height: height / 25,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
