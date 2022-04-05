import 'package:flutter/material.dart';
import 'package:shoes_selling_ui/color.dart';
import 'package:shoes_selling_ui/widgets/bottomNav/bottomNav_widget.dart';
import 'package:shoes_selling_ui/widgets/filled_button.dart';
import 'package:shoes_selling_ui/widgets/mText.dart';
import 'package:shoes_selling_ui/widgets/shoes_card.dart';
import 'package:shoes_selling_ui/widgets/text_widget.dart';

import '../models/brand_models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    List<Brands> _data = [
      Brands(logo: "assets/images/nike.png", name: "Nike", isFilled: true),
      Brands(logo: "assets/images/nike.png", name: "Adidas", isFilled: false),
      Brands(
          logo: "assets/images/nike.png", name: "New Balance", isFilled: false),
      Brands(logo: "assets/images/nike.png", name: "Puma", isFilled: false),
    ];

    return Scaffold(
      backgroundColor: AppColor.theme3,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        margin: const EdgeInsets.only(top: 65, left: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
                              color: AppColor.theme1.withOpacity(0.6),
                              size: 28),
                          hintText: "Search",
                          hintMaxLines: 1,
                          hintStyle: TextStyle(
                              fontSize: 20,
                              color: AppColor.theme1.withOpacity(0.6)),
                          fillColor: AppColor.theme4,
                          filled: true,
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
                        press: () {
                          setState(() {
                            _data[index].isFilled = true;
                          });
                        },
                        text: _data[index].name,
                        images: _data[index].logo,
                        isFilled: _data[index].isFilled,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: size.width,
                height: 400,
                color: AppColor.theme4,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, int) {
                    return Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: ShoesCard(
                        name: "Nike Air Max",
                        image: "assets/images/shoes1.png",
                        price: "250",
                        colorCount: "5",
                        type: 'Men',
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNav(),
    );
  }
}

