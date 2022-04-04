import 'package:flutter/material.dart';
import 'package:shoes_selling_ui/color.dart';

class FilledButton extends StatelessWidget {
  final bool isFilled;
  final VoidCallback press;
  final String text;
  const FilledButton(
      {Key? key, this.isFilled = true, required this.press, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: MaterialButton(
        onPressed: press,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: isFilled ? AppColor.theme1 : AppColor.theme4),
        ),
        elevation: isFilled ? 3 : 0,
        color: isFilled ? AppColor.theme1 : AppColor.theme4,
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                color: isFilled ? AppColor.theme4 : AppColor.theme5,
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
