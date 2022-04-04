import 'package:flutter/material.dart';
import 'package:shoes_selling_ui/color.dart';
import 'package:shoes_selling_ui/widgets/filled_button.dart';
import 'package:shoes_selling_ui/widgets/mText.dart';
import 'package:shoes_selling_ui/widgets/text_widget.dart';

import '../models/brand_models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    List<Brands> _data = [
      Brands(logo: "a", name: "Nike", isFilled: true),
      Brands(logo: "a", name: "Adidas", isFilled: false),
      Brands(logo: "a", name: "New Balance", isFilled: false),
      Brands(logo: "a", name: "Puma", isFilled: false),
    ];

    return Scaffold(
      backgroundColor: AppColor.theme3,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        margin: const EdgeInsets.only(top: 60, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mLargeText(
                  text: "Shoes Collections",
                  color: AppColor.theme1,
                  textSize: 22,
                ),
                SizedBox(height: 3),
                mText(
                  text: "The best of shoes in one place",
                  color: AppColor.theme1.withOpacity(0.7),
                  textSize: 16,
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: size.width / 1.6,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.theme1.withOpacity(0.1),
                          blurRadius: 20,
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,
                            color: AppColor.theme1.withOpacity(0.6), size: 28),
                        hintText: "Search",
                        hintStyle: TextStyle(
                            fontSize: 20,
                            color: AppColor.theme1.withOpacity(0.6)),
                        fillColor: AppColor.theme4,
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: AppColor.theme4,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: AppColor.theme4,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: AppColor.theme4,
                            )),
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColor.theme1,
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.theme1.withOpacity(0.8),
                          blurRadius: 20,
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(Icons.sort_rounded,
                          color: AppColor.theme4, size: 28),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 70,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 15),
                        child: FilledButton(
                      press: () {},
                      text: _data[index].name,
                      isFilled: _data[index].isFilled,
                    ));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
