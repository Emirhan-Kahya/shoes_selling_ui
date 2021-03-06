import 'package:flutter/material.dart';

class mLargeText extends StatelessWidget {
  final String text;
  final double textSize;
  final Color color;
  const mLargeText(
      {Key? key,
      required this.text,
      this.textSize = 20,
      this.color = Colors.black,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        letterSpacing: 2,
        color: color,
        fontSize: textSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
