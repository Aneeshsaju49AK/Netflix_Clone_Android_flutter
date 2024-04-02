import 'package:flutter/material.dart';

class ElevatedButtonCommon extends StatelessWidget {
  final num widthcustom;
  final num heightCustom;
  final String labelName;
  const ElevatedButtonCommon({
    required this.heightCustom,
    required this.widthcustom,
    required this.labelName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;
    return Container(
      width: width / widthcustom,
      height: height / heightCustom,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey),
      ),
      child: Center(
        child: Text(labelName),
      ),
    );
  }
}
