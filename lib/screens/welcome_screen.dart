import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoes_selling_ui/color.dart';
import 'package:shoes_selling_ui/screens/home_screen.dart';
import 'package:shoes_selling_ui/widgets/button_widget.dart';
import 'package:shoes_selling_ui/widgets/text_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/welcome.jpg"),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColor.theme1.withOpacity(0.0),
                    AppColor.theme1.withOpacity(0.7),
                  ],
                  begin: Alignment(-0.1, -0.2),
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 30,
              child: Image.asset(
                "assets/images/nikeLogo.png",
                color: Colors.white,
                width: 100,
                height: 100,
              ),
            ),
            Positioned(
              bottom: size.width / 2.2,
              left: 50,
              right: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          mText(
                            text: "find your  ",
                            textSize: 38,
                            color: AppColor.theme3,
                          ),
                          Container(
                            height: 5,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          mText(
                            text: "best",
                            textSize: 38,
                            color: AppColor.theme3,
                          ),
                          Container(
                            width: 75,
                            height: 5,
                            decoration: BoxDecoration(
                                color: AppColor.theme2,
                                borderRadius: BorderRadius.circular(70)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  mText(
                    text: "collections",
                    textSize: 38,
                    color: AppColor.theme3,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: size.width / 6,
              left: 50,
              right: 50,
              child: mButton(
                press: () {
                  Get.to(HomeScreen());
                },
                text: "Get Started",
                textColor: AppColor.theme3,
                backgroundColor: AppColor.theme2,
                radius: 50,
                height: 70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
