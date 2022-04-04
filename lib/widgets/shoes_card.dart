import 'package:flutter/material.dart';
import 'package:shoes_selling_ui/widgets/text_widget.dart';

import '../color.dart';
import 'mText.dart';

class ShoesCard extends StatelessWidget {
  final String image, name, type, colorCount, price;
  const ShoesCard(
      {Key? key,
      required this.image,
      required this.name,
      required this.type,
      required this.colorCount,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
      width: 220,
      height: 400,
      decoration: BoxDecoration(
        color: AppColor.theme4,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColor.theme1.withOpacity(0.1),
            blurRadius: 25,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 160,
            height: 160,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                    image,
                    width: 160,
                    height: 160,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mLargeText(text: name, color: AppColor.theme1),
              mText(
                  text: type + "'s Shoes", color: AppColor.theme1.withOpacity(0.7)),
              mText(text: colorCount + " Colors", color: AppColor.theme1.withOpacity(0.7)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              mLargeText(
                text: "\$" + price,
                color: AppColor.theme2,
                textSize: 24,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColor.theme1,
                ),
                child: Icon(
                  Icons.add,
                  size: 20,
                  color: AppColor.theme4,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
