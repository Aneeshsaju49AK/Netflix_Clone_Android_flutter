import 'package:flutter/material.dart';

class TextHeadLine extends StatelessWidget {
  num widthset;
  num heightSet;
  String label;
  FontWeight? weight;
  double? size;
  Color color;
  Icon? icon;
  double? iconSize;
  TextHeadLine(
      {required this.label,
      required this.heightSet,
      required this.widthset,
      required this.color,
      this.weight,
      this.size,
      this.icon,
      this.iconSize,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width / widthset,
      height: height / heightSet,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: Row(
          children: [
            if (icon != null)
              Icon(
                Icons.route_rounded,
                size: iconSize,
              ),
            Text(
              label,
              style: TextStyle(
                fontSize: size,
                fontWeight: weight,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
