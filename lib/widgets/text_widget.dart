import 'package:flutter/material.dart';

class mText extends StatelessWidget {
  final String text;
  final double textSize;
  final Color color;
  const mText(
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
