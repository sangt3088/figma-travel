import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  SmallText(
      {Key? key,
      this.color = const Color.fromARGB(255, 140, 138, 137),
      required this.text,
      this.size = 15,
      this.height = 1.2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // maxLines: 1,
      style: TextStyle(
        // fontFamily: 'Roboto',
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size,
        height: height,
      ),
    );
  }
}
