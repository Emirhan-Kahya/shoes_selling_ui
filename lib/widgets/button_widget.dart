import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shoes_selling_ui/color.dart';

class mButton extends StatelessWidget {
  final double width, height, radius, fontSize;
  final String text;
  final Color textColor, backgroundColor;
  final VoidCallback press;
  const mButton({
    Key? key,
    this.width = 200.0,
    this.height = 50.0,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.radius = 0.0,
    this.fontSize = 20,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: textColor
            ),
          ),
        ),
      ),
    );
  }
}
