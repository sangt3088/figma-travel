import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow; // ẩn chữ ...
  BigText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.overFlow = TextOverflow.ellipsis,
    this.size = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // overflow: overFlow,
      style: TextStyle(
          // fontFamily: 'Raleway',
          color: color,
          fontWeight: FontWeight.w700,
          fontSize: size),
    );
  }
}
