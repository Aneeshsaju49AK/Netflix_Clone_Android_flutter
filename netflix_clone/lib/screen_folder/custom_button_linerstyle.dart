import 'dart:io';

import 'package:flutter/material.dart';

class CustomButtonLinerStyle extends StatelessWidget {
  String? image;
  String? label;
  Color? imageColor;
  Color? labelColor;
  double? scale;
  double? fontsize;
  FontWeight? weight;
  CustomButtonLinerStyle(
      {Key? key,
      this.image,
      this.label,
      this.imageColor,
      this.labelColor,
      this.fontsize,
      this.scale,
      this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (image != null)
          Image.asset(
            image!,
            color: imageColor,
            scale: scale,
          ),
        if (image != null && label != null)
          SizedBox(width: 8), // Add spacing between image and text
        if (label != null)
          Text(
            label!,
            style: TextStyle(
                color: labelColor, fontSize: fontsize, fontWeight: weight),
          ),
      ],
    );
  }
}
