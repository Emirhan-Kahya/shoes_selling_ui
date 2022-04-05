import 'package:flutter/material.dart';
import 'package:shoes_selling_ui/color.dart';

class buildContainerBottomNav extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final Function() press;
  const buildContainerBottomNav(
      {Key? key,
        required this.icon,
        this.isSelected = false,
        required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: isSelected ? 60 : 50,
        height: isSelected ? 60 : 50,
        decoration: BoxDecoration(
          color: isSelected ? AppColor.theme1.withOpacity(0.4) : AppColor.theme4,
          shape: BoxShape.circle,
          boxShadow: isSelected
              ? [
            BoxShadow(
                color: AppColor.theme1.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1)
          ]
              : [],
        ),
        child: Icon(
          icon,
          size: isSelected ? 35 : 30,
          color:
          isSelected ? AppColor.theme4 : AppColor.theme1.withOpacity(0.7),
        ),
      ),
    );
  }
}
