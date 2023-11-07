import 'package:flutter/material.dart';

class MediumText extends StatelessWidget {
  Color? color;
  final String text;
  double size;

  MediumText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 18,
  }) : super(key: key);

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
      ),
    );
  }
}
