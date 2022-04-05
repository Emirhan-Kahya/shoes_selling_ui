import 'package:flutter/material.dart';
import 'package:shoes_selling_ui/color.dart';

class FilledButton extends StatelessWidget {
  final bool isFilled;
  final Function() press;
  final String text, images;
  const FilledButton(
      {Key? key,
      this.isFilled = true,
      required this.press,
      required this.text,
      required this.images})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: MaterialButton(
        onPressed: press,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide.none,
        ),
        elevation: isFilled ? 4 : 1,
        color: isFilled ? AppColor.theme1 : AppColor.theme4,
        child: Row(
          children: [
            Image.asset(
              images,
              color: isFilled ? AppColor.theme4 : AppColor.theme5,
              height: 30,
              width: 30,
            ),
            SizedBox(width: 2),
            Text(
              text,
              style: TextStyle(
                  color: isFilled ? AppColor.theme4 : AppColor.theme5,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
